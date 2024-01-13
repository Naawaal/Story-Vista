import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:story_vista/app/data/models/book_model.dart';
import 'package:story_vista/app/data/services/home_services.dart';

class HomeController extends GetxController {
  /*
    * Instance of FirebaseAuth
  */
  final FirebaseAuth _auth = FirebaseAuth.instance;
  /*
    * Instance of HomeServices
  */
  final HomeServices _homeServices = HomeServices();

  /*
    * Creating a list of categories to be displayed in the home screen
    * The list is created using the Map data structure
  */
  final RxList<Map<String, dynamic>> categoriesData = [
    {
      "title": "Action",
      "icon": "assets/icons/fight.png",
    },
    {
      "title": "Slice of Life",
      "icon": "assets/icons/slice_of_life.png",
    },
    {
      "title": "Romance",
      "icon": "assets/icons/hearts.png",
    },
    {
      "title": "Comedy",
      "icon": "assets/icons/comedy.png",
    },
    {
      "title": "Drama",
      "icon": "assets/icons/drama.png",
    },
    {
      "title": "Fantasy",
      "icon": "assets/icons/fantasy.png",
    },
    {
      "title": "Horror",
      "icon": "assets/icons/travel.png",
    },
    {
      "title": "Mystery",
      "icon": "assets/icons/mystery.png",
    },
  ].obs;

  /*
    * Get the all users uploaded books from the HomeServices class
  */
  Stream<List<BookModel?>> get newReleaseBooks =>
      _homeServices.getAllUsersUploadedBooks();

  /*
    * Get the all users data
  */
  User? getAllUsersData() {
    return _homeServices.getCurrentUser();
  }
}
