import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class SplashButtomView extends GetView {
  const SplashButtomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: Colors.transparent,
      child: Column(
        children: [
          Gap(Get.height * 0.02),
          Text(
            "Disclaimer",
            style: Get.textTheme.labelLarge,
          ),
          Gap(Get.height * 0.02),
          Text(
            'This app is for educational purposes only. All stories are from the internet and are not owned by the developer or the publisher. All rights reserved to the respective owners.',
            textAlign: TextAlign.justify,
            style: Get.textTheme.labelSmall!.copyWith(
              color: Get.theme.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
