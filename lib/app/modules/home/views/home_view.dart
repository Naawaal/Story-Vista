import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/views/home_custom_app_bar_view.dart';
import 'package:story_vista/app/modules/home/views/home_top_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomeCustomAppBarView(),
      ),
      body: Column(
        children: [
          const HomeTopWidgetView(),
          Gap(Get.height * 0.01),
          Expanded(
            child: Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(horizontal: Get.height * 0.009),
              decoration: BoxDecoration(
                color: Get.theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular',
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
