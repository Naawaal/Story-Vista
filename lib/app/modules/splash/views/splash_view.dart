import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:story_vista/app/modules/splash/views/splash_buttom_view.dart';
import 'package:story_vista/app/modules/splash/views/splash_top_view.dart';

import '../../../widgets/button_widget.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
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
      bottomNavigationBar: ButtonWidget(
        text: 'Continue',
        onPressed: () {},
      ),
    );
  }
}
