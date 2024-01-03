import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/views/home_custom_app_bar_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: Get.theme.colorScheme.primary,
              ),
              child: const Column(
                children: [
                  HomeCustomAppBarView(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: Get.theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('HomeView is working'),
            ),
          )
        ],
      ),
    );
  }
}
