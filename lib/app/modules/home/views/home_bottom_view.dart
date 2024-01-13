import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import 'home_new_release_list_widget_view.dart';

class HomeBottomView extends GetView {
  const HomeBottomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: Get.height * 0.009),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO Flutter: Uncomment this when the popular feature is ready
          // Text(
          //   'Popular',
          //   style: Get.textTheme.bodyMedium!.copyWith(
          //     color: Get.theme.colorScheme.onSurface,
          //   ),
          // ),
          // Gap(Get.height * 0.01),
          // const HomePopularListWidgetView(),
          Text(
            'New Releases',
            style: Get.textTheme.bodyMedium!.copyWith(
              color: Get.theme.colorScheme.onSurface,
            ),
          ),
          Gap(Get.height * 0.01),
          const HomeNewReleaseListWidgetView(),
        ],
      ),
    );
  }
}
