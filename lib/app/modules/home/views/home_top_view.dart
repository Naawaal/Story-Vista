import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/controllers/home_controller.dart';
import 'package:story_vista/app/modules/home/views/home_list_widget_view.dart';

import 'home_search_bar_view.dart';

class HomeTopWidgetView extends GetView<HomeController> {
  const HomeTopWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Get.height * 0.009),
      width: Get.width,
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Hello, ',
              style: Get.textTheme.bodyMedium!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
              children: [
                TextSpan(
                  text: 'John',
                  style: Get.textTheme.bodyLarge!.copyWith(
                    color: Get.theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Gap(Get.height * 0.005),
          Text(
            'What do you want to read today ?',
            style: Get.textTheme.labelLarge!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.02),
          const HomeSearchBarWidgetView(),
          Gap(Get.height * 0.02),
          Text(
            'Categories',
            style: Get.textTheme.labelLarge!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.01),
          SizedBox(
            height: Get.height * 0.08,
            child: const HomeListWidgetView(),
          ),
          Gap(Get.height * 0.01),
        ],
      ),
    );
  }
}
