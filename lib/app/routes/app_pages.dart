import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../data/services/user_preference_services.dart';
import '../modules/book_detail/bindings/book_detail_binding.dart';
import '../modules/book_detail/views/book_detail_view.dart';
import '../modules/book_viewer/bindings/book_viewer_binding.dart';
import '../modules/book_viewer/views/book_viewer_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/upload_book/bindings/upload_book_binding.dart';
import '../modules/upload_book/views/upload_book_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  /*
    * This is the initial route of the application.
    * If the user is logged in, it will return the home route,
    * otherwise it will return the splash route.
  */
  static Future<String> get initialRoute async {
    // Instance of Firebase Auth
    final auth = FirebaseAuth.instance;
    // Get the current user
    final User? user = auth.currentUser;
    // Get the user logged in status
    bool isLoggedIn = await UserPreferences().getUserLoggedIn();
    // Check if the user is not null and logged in
    if (user != null && isLoggedIn) {
      return Routes.HOME;
    } else {
      return Routes.SPLASH;
    }
  }

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_DETAIL,
      page: () => const BookDetailView(),
      binding: BookDetailBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_VIEWER,
      page: () => const BookViewerView(),
      binding: BookViewerBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_BOOK,
      page: () => const UploadBookView(),
      binding: UploadBookBinding(),
    ),
  ];
}
