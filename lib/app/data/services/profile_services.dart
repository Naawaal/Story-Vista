import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_vista/app/data/models/book_model.dart';
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
    * This method is used to pick pdf from file manager
  */
  Future<String?> pickPdf() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      if (result != null) {
        File file = File(result.files.first.path!);
        if (file.existsSync()) {
          final pdfUrl = uploadPdf(file);
          return pdfUrl.toString();
        } else {
          SnackBarUtil.showErrorSnackBar('No pdf selected');
        }
      } else {
        SnackBarUtil.showErrorSnackBar('No pdf selected');
      }
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while picking pdf');
    }
    return null;
  }

  /*
    * This method is used upload data to firestore database
  */
  Future<BookModel> uploadData({
    required String id,
    required String bookTitle,
    required String authorName,
    required String description,
    required String price,
    required String language,
    required String pages,
    required String audioLength,
    required String bookUrl,
  }) async {
    try {
      final bookData = BookModel(
        id: id,
        title: bookTitle,
        description: description,
        price: price,
        language: language,
        pages: int.tryParse(pages) ?? 0,
        author: authorName,
        image: '',
        aboutAuthor: '',
        audioBook: '',
        audioLen: audioLength,
        bookUrl: bookUrl,
        category: 'Isekai',
        year: DateTime.now().year,
      );
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while uploading data');
    }
    return BookModel();
  }

  /*
    * This method is used to upload image to firebase storage
  */
  Future<String?> uploadImage(File image) async {
    try {
      const uuid = Uuid();
      final fileName = uuid.v4();
      final storageRef = _storage.ref().child('Images/$fileName');
      final uploadTask = storageRef.putFile(image);
      final TaskSnapshot taskSnapshot = await uploadTask;
      return await taskSnapshot.ref.getDownloadURL();
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while uploading image');
    }
    return null;
  }

  /*
    * This method is used to upload pdf to firebase storage
  */
  Future<void> uploadPdf(File pdf) async {
    try {
      const uuid = Uuid();
      final fileName = uuid.v4();
      final storageRef = _storage.ref().child('Pdfs/$fileName');
      final uploadTask = storageRef.putFile(pdf);
      final TaskSnapshot taskSnapshot = await uploadTask;
      await taskSnapshot.ref.getDownloadURL();
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while uploading pdf');
    }
  }
}
