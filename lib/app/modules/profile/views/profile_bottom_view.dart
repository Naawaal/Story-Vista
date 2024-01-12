import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/views/profile_uploaded_book_view.dart';

class ProfileBottomView extends GetView {
  const ProfileBottomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              "Your Uploaded Books",
              style: Get.textTheme.bodyMedium!.copyWith(
                color: Get.theme.colorScheme.secondary,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(Get.height * 0.005),
            const ProfileUploadedBookView(),
          ],
        ),
      ),
    );
  }
}
