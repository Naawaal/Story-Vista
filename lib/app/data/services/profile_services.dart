import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../../utils/snack_bar_util.dart';

class ProfileServices {
  /*
    * This is the instance of FirebaseAuth.
  */
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /*
    * This is the instance of Cloud Storage.
  */
  final FirebaseStorage _storage = FirebaseStorage.instance;

  /*
    * This method is used to pick image from gallery
  */
  Future<String?> pickImage() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedImage = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
      );
      if (pickedImage != null) {
        uploadImage(File(pickedImage.path));
        return pickedImage.path;
      } else {
        SnackBarUtil.showErrorSnackBar('No image selected');
        return null;
      }
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while picking image');
    }
    return null;
  }

  /*
    * This method is used to upload image to firebase storage
  */
  Future<void> uploadImage(File image) async {
    try {
      const uuid = Uuid();
      final fileName = uuid.v4();
      final storageRef = _storage.ref().child('Images/$fileName');
      final uploadTask = storageRef.putFile(image);
      final TaskSnapshot taskSnapshot = await uploadTask;
      await taskSnapshot.ref.getDownloadURL();
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while uploading image');
    }
  }
}
