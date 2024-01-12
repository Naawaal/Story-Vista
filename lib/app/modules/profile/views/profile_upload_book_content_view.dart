import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/controllers/profile_controller.dart';

import '../../../components/text_form_filed_component.dart';

class ProfileUploadBookContentView extends GetView<ProfileController> {
  const ProfileUploadBookContentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
          () => Container(
            width: Get.width * 0.4,
            height: Get.height * 0.25,
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(08),
              image: DecorationImage(
                image: controller.imagePath.value.isNotEmpty
                    ? FileImage(
                        File(controller.imagePath.value),
                      )
                    : MemoryImage(Uint8List(0)) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
            child: controller.imagePath.value.isEmpty
                ? SizedBox(
                    child: IconButton(
                      onPressed: () async => await controller.pickeImage(),
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Get.theme.colorScheme.onSecondary,
                      ),
                    ),
                  )
                : null,
          ),
        ),
        Gap(Get.height * 0.02),
        TextFormFielComponent(
          controller: controller.bookTitleController,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          hintText: "Book Title",
          iconData: Icons.book,
        ),
        Gap(Get.height * 0.01),
        TextFormFielComponent(
          controller: controller.authorNameController,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          hintText: "Author Name",
          iconData: Icons.person,
        ),
        Gap(Get.height * 0.01),
        TextFormFielComponent(
          controller: controller.descriptionController,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          hintText: "Description",
          iconData: Icons.description,
        ),
      ],
    );
  }
}
