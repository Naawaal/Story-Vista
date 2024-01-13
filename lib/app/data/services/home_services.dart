import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/book_model.dart';

class HomeServices {
  /*
  * Instance of FirebaseAuth
  */
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /*
  * Instance of FirebaseFirestore, to access the Cloud Firestore database
  */
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /*
  * Get the current user
  */
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  /*
  * Get all Users uploaded books
  */
  Stream<List<BookModel?>> getAllUsersUploadedBooks() {
    // Path to the book collection inside user uploaded book collection
    final bookRef = _firestore.collection('Books');
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
