import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/views/profile_upload_book_content_view.dart';

import '../controllers/profile_controller.dart';
import 'profile_custom_app_bar_widget_view.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ProfileCustomAppBarWidgetView(),
      ),
      body: Column(
        children: [
          Container(
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
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.009,
              ),
              width: Get.width,
              color: Get.theme.colorScheme.background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(Get.height * 0.005),
                  Text(
                    "Your Uploads",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => Get.defaultDialog(
          radius: 08,
          title: 'Upload Book',
          content: const ProfileUploadBookContentView(),
          textConfirm: 'Upload',
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
