import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class SplashTopView extends GetView {
  const SplashTopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: Get.theme.colorScheme.primary,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/png/manga.png',
            width: Get.width * 0.4,
            fit: BoxFit.contain,
          ),
          Gap(Get.height * 0.02),
          Text(
            'Story Vista',
            style: Get.textTheme.headlineMedium!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.01),
          Text(
            "Your portal to limitless stories. Explore, read, and immerse yourself.",
            style: Get.textTheme.bodyMedium!
                .copyWith(color: Get.theme.colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}
