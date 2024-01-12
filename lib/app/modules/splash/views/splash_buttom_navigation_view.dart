import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/routes/app_pages.dart';

import '../../../widgets/button_widget.dart';

class SplashButtomNavigationView extends GetView {
  const SplashButtomNavigationView({super.key});
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: 'Sign-in with Google',
      onPressed: () => Get.offAllNamed(Routes.HOME),
    );
  }
}
