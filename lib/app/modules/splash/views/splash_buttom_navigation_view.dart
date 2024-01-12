import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/splash/controllers/splash_controller.dart';

import '../../../widgets/button_widget.dart';

class SplashButtomNavigationView extends GetView<SplashController> {
  const SplashButtomNavigationView({super.key});
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: 'Sign-in with Google',
      onPressed: () => controller.signInWithGoogle(),
    );
  }
}
