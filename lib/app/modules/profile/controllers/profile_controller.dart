import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:story_vista/app/data/services/profile_services.dart';

import '../../../data/services/splash_services.dart';

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
  }

  /*
    * This method is used to pick pdf from file manager
  */
  void pickPdf() async {
    pdfPath.value = await profileServices.pickPdf() ?? '';
  }

  /*
    * This method is used sign-out the user
  */
  void signOut() async {
    await splashServices.signOut();
  }
}
