import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_vista/app/modules/splash/views/splash_buttom_navigation_view.dart';
import 'package:story_vista/app/modules/splash/views/splash_buttom_view.dart';
import 'package:story_vista/app/modules/splash/views/splash_top_view.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SplashTopView(),
          ),
          Expanded(
            child: SplashButtomView(),
          ),
        ],
      ),
      bottomNavigationBar: SplashButtomNavigationView(),
    );
  }
}
