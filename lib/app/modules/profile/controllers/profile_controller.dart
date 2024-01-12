import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_vista/app/utils/snack_bar_util.dart';

class ProfileController extends GetxController {
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
  * This variable is used to store image picked from gallery
  */
  XFile? image;

  /*
  * This variable is used to store image path
  */
  RxString imagePath = ''.obs;

  /*
  * This method is used to pick image from gallery
  */
  Future<void> pickeImage() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedImage = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
      );
      if (pickedImage != null) {
        image = pickedImage;
        imagePath.value = pickedImage.path;
        update();
      } else {
        SnackBarUtil.showErrorSnackBar('No image selected');
      }
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while picking image');
    }
  }
}
