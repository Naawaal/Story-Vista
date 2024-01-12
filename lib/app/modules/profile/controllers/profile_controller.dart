import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
    * This variable is used to store image path
  */
  RxString imagePath = ''.obs;

  /*
    * This variable is used to store pdf path
  */
  RxString pdfPath = ''.obs;

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
    pdfPath.value = await profileServices.pickPdf() ?? '';
  }

  /*
    * This method is to validate book data before uploading to firebase firestore
  */
  bool validateBookData() {
    if (bookTitleController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter book title');
      return false;
    } else if (authorNameController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter author name');
      return false;
    } else if (descriptionController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter description');
      return false;
    } else if (priceController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter price');
      return false;
    } else if (languageController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter language');
      return false;
    } else if (pagesController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter pages');
      return false;
    } else if (audioLengthController.text.isEmpty) {
      SnackBarUtil.showErrorSnackBar('Please enter audio length');
      return false;
    } else if (imagePath.value.isEmpty) {
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
    * This method is used to upload book data to firebase firestore
  */
  void uploadBookData() async {
    if (validateBookData()) {
      await profileServices.uploadBookData(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        bookTitle: bookTitleController.text,
        authorName: authorNameController.text,
        description: descriptionController.text,
        price: priceController.text,
        language: languageController.text,
        pages: pagesController.text,
        audioLength: audioLengthController.text,
        bookUrl: pdfPath.value,
      );
      SnackBarUtil.showSuccessSnackBar('Book uploaded successfully');
      bookTitleController.clear();
      authorNameController.clear();
      descriptionController.clear();
      priceController.clear();
      languageController.clear();
      pagesController.clear();
      audioLengthController.clear();
      imagePath.value = '';
      pdfPath.value = '';
    }
  }

  /*
    * This method is used sign-out the user
  */
  void signOut() async {
    await splashServices.signOut();
  }
}
