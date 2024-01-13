import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:story_vista/app/data/models/book_model.dart';
import 'package:story_vista/app/data/services/profile_services.dart';

import '../../../data/services/splash_services.dart';
import '../../../utils/snack_bar_util.dart';

class ProfileController extends GetxController {
  /*
    * This is the instance of SplashServices.
  */
  final SplashServices splashServices = SplashServices();
  /*
    * This is the instance of ProfileServices.
  */
  final ProfileServices profileServices = ProfileServices();

  /*
    * This is the instance of BookModel.
  */
  final BookModel bookModel = BookModel();

  /*
    * TextEditingControllers for Book Title, Author Name, Description, Price, Language, Pages and Audio Length
  */
  final TextEditingController bookTitleController = TextEditingController();
  final TextEditingController authorNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController languageController = TextEditingController();
  final TextEditingController pagesController = TextEditingController();
  final TextEditingController audioLengthController = TextEditingController();

  /*
    * This list is used to store all the TextEditingControllers
  */
  late List<TextEditingController> textEditingControllers =
      <TextEditingController>[].obs;

  /*
    * This list is used to store all the field names
  */
  RxList<String> fieldNames = [
    'book title',
    'author name',
    'description',
    'price',
    'language',
    'pages',
    'audio length',
  ].obs;

  /*
    * This variable is used to store image path
  */
  RxString imagePath = ''.obs;

  /*
    * This variable is used to store pdf path
  */
  RxString pdfPath = ''.obs;

  /*
    * This variable is used to store image loading status
    * true: if image is loading
    * false: if image is not loading
    * I am not using this variable anywhere in the app for now but I will use it in future
  */
  RxBool isImageLoading = false.obs;

  /*
    * This method is used to pick image from gallery
  */
  void pickeImage() async {
    imagePath.value = await profileServices.pickImage() ?? '';
    update();
  }

  /*
    * This method is used to pick pdf from file manager
  */
  void pickPdf() async {
    isImageLoading.value = true;
    pdfPath.value = await profileServices.pickPdf() ?? '';
    isImageLoading.value = false;
    update();
  }

  /*
    * This method is to validate book data before uploading to firebase firestore
  */
  bool validateBookData() {
    for (var controller in textEditingControllers) {
      if (controller.text.isEmpty) {
        SnackBarUtil.showErrorSnackBar(
            'Please enter ${fieldNames[textEditingControllers.indexOf(controller)]}');
        return false;
      }
    }
    if (imagePath.value.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please select image');
      return false;
    } else if (pdfPath.value.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please select pdf');
      return false;
    } else {
      return true;
    }
  }

  /*
    * This method is used to clear all the text editing controllers
  */
  void clearTextEditingControllers() {
    for (var controller in textEditingControllers) {
      controller.clear();
      imagePath.value = '';
      pdfPath.value = '';
    }
    update();
  }

  /*
    * This method is used to upload book data to firebase firestore
  */
  void uploadBookData() async {
    // Overriding the pdfPath.value with the pdfUrl returned from uploadPdf method
    pdfPath.value = await profileServices.uploadPdf(File(pdfPath.value)) ?? '';
    if (validateBookData()) {
      await profileServices.uploadBookData(
        bookModel: BookModel(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: bookTitleController.text,
          author: authorNameController.text,
          aboutAuthor: descriptionController.text,
          price: priceController.text,
          language: languageController.text,
          pages: int.tryParse(pagesController.text) ?? 0,
          audioLen: audioLengthController.text,
          category: 'Fiction',
          year: int.tryParse(DateTime.now().year.toString()),
          pdfUrl: pdfPath.value,
          audioBook: "",
          coverUrl: imagePath.value,
          description: descriptionController.text,
          image: imagePath.value,
        ),
      );
      SnackBarUtil.showSuccessSnackBar('Book uploaded successfully');
      clearTextEditingControllers();
    }
  }

  /*
    * This method is used to get user uploaded books
  */
  Stream<List<BookModel?>> getUserUploadedBooks() {
    return profileServices.getUserUploadedBook();
  }

  /*
    * This method is used sign-out the user
  */
  void signOut() async {
    await splashServices.signOut();
  }

  /*
    * This method is called when the controller is initialized 
    * and it is used to initialize all the text editing controllers
    * and add them to the list
  */
  @override
  void onInit() {
    textEditingControllers = <TextEditingController>[
      bookTitleController,
      authorNameController,
      descriptionController,
      priceController,
      languageController,
      pagesController,
      audioLengthController,
    ];
    super.onInit();
  }
}
