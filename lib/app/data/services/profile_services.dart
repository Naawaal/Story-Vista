import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
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
    * This is the instance of Cloud Firestore.
  */
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /*
    * This is the instance of Cloud Storage.
  */
  final FirebaseStorage _storage = FirebaseStorage.instance;

  /*
    * This variable is used to store imageUrl
  */
  late String? imageUrl;

  /*
    * This variable is used to store pdfUrl
  */
  late String? pdfUrl;

  /*
    * This method is used to get the current user
  */
  User? getCurrentUser() {
    return _auth.currentUser;
  }

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
        imageUrl = await uploadImage(File(pickedImage.path));
        return imageUrl.toString();
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
          pdfUrl = File(result.files.first.path!).path;
          return pdfUrl;
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
  Future<BookModel> uploadBookData({required BookModel bookModel}) async {
    try {
      final bookData = BookModel(
        id: bookModel.id,
        title: bookModel.title,
        description: bookModel.description,
        price: bookModel.price,
        language: bookModel.language,
        pages: bookModel.pages,
        author: bookModel.author,
        image: bookModel.image,
        aboutAuthor: bookModel.aboutAuthor,
        audioBook: '',
        audioLen: bookModel.audioLen,
        coverUrl: bookModel.coverUrl,
        category: bookModel.category,
        pdfUrl: bookModel.pdfUrl,
        year: bookModel.year,
      );
      await _firestore
          .collection('Books')
          .doc(bookModel.id)
          .set(bookData.toJson());
      await storeUserUploadedBook(bookData);
      return bookData;
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
      final storageRef = _storage.ref().child('Images/$fileName.jpg');
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
  Future<String?> uploadPdf(File pdf) async {
    try {
      const uuid = Uuid();
      final fileName = uuid.v4();
      final storageRef = _storage.ref().child('Pdfs/$fileName.pdf');
      final uploadTask = storageRef.putFile(pdf);
      final TaskSnapshot taskSnapshot = await uploadTask;
      return await taskSnapshot.ref.getDownloadURL();
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while uploading pdf');
    }
    return null;
  }

  /*
    * This method is used to store user uploaded book into their own prviate collection
  */
  Future<void> storeUserUploadedBook(BookModel bookModel) async {
    try {
      final User? user = _auth.currentUser;
      if (user != null) {
        await _firestore
            .collection('userBook')
            .doc(user.uid)
            .collection('Books')
            .doc(bookModel.id)
            .set(bookModel.toJson());
      }
    } catch (e) {
      SnackBarUtil.showErrorSnackBar('Error while storing book');
    }
  }

  /*
    * This method is used to get user uploaded book from their own prviate collection
  */
  Stream<List<BookModel?>> getUserUploadedBook() {
    // Get the current user uid
    final User? user = _auth.currentUser;
    // Path to the user uploaded book collection
    final userBookRef = _firestore.collection('userBook').doc(user!.uid);
    // Path to the book collection inside user uploaded book collection
    final bookRef = userBookRef.collection('Books');
    // Get the book collection data
    return bookRef.snapshots().map((snapDocs) {
      final document = snapDocs.docs;
      List<BookModel> bookModel = [];
      if (document.isNotEmpty) {
        for (var doc in document) {
          final data = doc.data();
          bookModel.add(BookModel.fromJson(data));
        }
        return bookModel;
      } else {
        return bookModel;
      }
    });
  }
}
