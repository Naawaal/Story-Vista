import 'package:get/get.dart';

import '../../../data/services/splash_services.dart';

class SplashController extends GetxController {
  /*
    * This is the instance of SplashServices.
  */

  final SplashServices splashServices = SplashServices();
  /*
    * This method is used to sign-in with Google.
  */
  void signInWithGoogle() async {
    await splashServices.signInWithGoogle();
  }
}
