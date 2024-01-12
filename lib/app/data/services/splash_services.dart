import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:story_vista/app/data/services/user_preference_services.dart';
import 'package:story_vista/app/routes/app_pages.dart';
import 'package:story_vista/app/utils/snack_bar_util.dart';

class SplashServices {
  /*
    * This is the instance of FirebaseAuth.
  */
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  /*
    * This method is used to check if the user is authenticated or not.
    * If the user is authenticated, it will return true, otherwise false.
  */
  static Future<void> checkAuth({
    required bool isUserAuthenticated,
  }) async {
    try {
      if (isUserAuthenticated == true) {
        UserPreferences().saveUserLoggedIn(value: true);
        Get.offAllNamed(Routes.HOME);
      } else {
        UserPreferences().saveUserLoggedIn(value: false);
        Get.offAllNamed(Routes.SPLASH);
      }
    } catch (e) {
      SnackBarUtil.showErrorSnackBar(e.toString());
    }
  }

  /*
    * This method is used to sign-in with Google.
  */
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // Sign-in the user with the credential
      await _auth.signInWithCredential(credential);
      // Check if the user is authenticated
      if (_auth.currentUser != null) {
        checkAuth(isUserAuthenticated: true);
      } else {
        checkAuth(isUserAuthenticated: false);
      }
    } catch (e) {
      SnackBarUtil.showErrorSnackBar(e.toString());
    }
  }

  /*
    * This method is used to sign-out the user.
  */
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      checkAuth(isUserAuthenticated: false);
    } catch (e) {
      SnackBarUtil.showErrorSnackBar(e.toString());
    }
  }
}
