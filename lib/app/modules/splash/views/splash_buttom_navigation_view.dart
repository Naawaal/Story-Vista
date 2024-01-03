import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/button_widget.dart';

class SplashButtomNavigationView extends GetView {
  const SplashButtomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: 'Continue',
      onPressed: () {},
    );
  }
}
