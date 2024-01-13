import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/controllers/profile_controller.dart';

class ProfileTopView extends GetView<ProfileController> {
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
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              controller.getCurrentUser()!.photoURL.toString(),
            ),
          ),
          Gap(Get.height * 0.02),
          Text(
            controller.getCurrentUser()!.displayName.toString(),
            style: Get.textTheme.headlineSmall!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.004),
          Text(
            controller.getCurrentUser()!.email.toString(),
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
