import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class ProfileTopView extends GetView {
  const ProfileTopView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
        horizontal: Get.height * 0.009,
      ),
      color: Get.theme.colorScheme.primary,
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/19484515?v=4',
            ),
          ),
          Gap(Get.height * 0.02),
          Text(
            'Nawal Shrestha',
            style: Get.textTheme.headlineSmall!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.004),
          Text(
            'test@gmail.com',
            style: Get.textTheme.bodySmall!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.02),
        ],
      ),
    );
  }
}
