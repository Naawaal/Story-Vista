import 'package:get/get.dart';

class HomeController extends GetxController {
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
      "icon": "assets/icons/hearts.png",
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
}
