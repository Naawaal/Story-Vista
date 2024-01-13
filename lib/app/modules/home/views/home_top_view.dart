import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/controllers/home_controller.dart';
import 'package:story_vista/app/modules/home/views/home_category_list_widget_view.dart';

import 'home_search_bar_widget_view.dart';

class HomeTopWidgetView extends GetView<HomeController> {
  const HomeTopWidgetView({super.key});
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
                  text: '${controller.getAllUsersData()!.displayName}',
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
          //TODO: Uncomment this when the search feature is ready
          // Gap(Get.height * 0.02),
          // const HomeSearchBarWidgetView(),
          //TODO: Uncomment this when the categories feature is ready
          // Gap(Get.height * 0.02),
          // Text(
          //   'Categories',
          //   style: Get.textTheme.labelLarge!.copyWith(
          //     color: Get.theme.colorScheme.onPrimary,
          //   ),
          // ),
          // Gap(Get.height * 0.01),
          // const HomeCategoryListWidgetView(),
          Gap(Get.height * 0.01),
        ],
      ),
    );
  }
}
