import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/controllers/profile_controller.dart';

class ProfileCustomAppBarWidgetView extends GetView<ProfileController> {
  const ProfileCustomAppBarWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Profile',
        style: Get.textTheme.headlineMedium!.copyWith(
          color: Get.theme.colorScheme.onPrimary,
        ),
      ),
      centerTitle: true,
      backgroundColor: Get.theme.colorScheme.primary,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Get.theme.colorScheme.onPrimary,
          size: 20,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => controller.signOut(),
          icon: Icon(
            Icons.logout,
            color: Get.theme.colorScheme.onPrimary,
            size: 20,
          ),
        ),
      ],
    );
  }
}
