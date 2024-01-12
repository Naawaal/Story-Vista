import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/controllers/profile_controller.dart';
import 'package:story_vista/app/components/button_widget.dart';

import '../../../components/text_form_filed_component.dart';

class ProfileAddNewBook extends GetView<ProfileController> {
  const ProfileAddNewBook({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Container(
                width: Get.width * 0.4,
                height: Get.height * 0.25,
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(08),
                  image: controller.imagePath.value.isNotEmpty
                      ? DecorationImage(
                          image: FileImage(
                            File(controller.imagePath.value),
                          ),
                          fit: BoxFit.cover,
                        )
                      // Don't provide an image when imagePath is empty
                      : null,
                ),
                child: controller.imagePath.value.isEmpty
                    ? IconButton(
                        onPressed: () async => await controller.pickeImage(),
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Get.theme.colorScheme.onSecondary,
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      )
                    : null,
              ),
            ),
            Row(
              children: [
                ButtonWidget(text: "Select PDF", onPressed: () {}),
                Gap(Get.width * 0.001),
                ButtonWidget(text: "Select Audio", onPressed: () {}),
              ],
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
              maxLines: 05,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              hintText: "Description",
            ),
            Gap(Get.height * 0.01),
            Row(
              children: [
                Expanded(
                  child: TextFormFielComponent(
                    controller: controller.priceController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    hintText: "Price",
                    iconData: Icons.money,
                  ),
                ),
                Gap(Get.width * 0.02),
                Expanded(
                  child: TextFormFielComponent(
                    controller: controller.pagesController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    hintText: "Pages",
                    iconData: Icons.pages,
                  ),
                ),
              ],
            ),
            Gap(Get.height * 0.02),
            TextFormFielComponent(
              controller: controller.languageController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              hintText: "Language",
              iconData: Icons.language,
            ),
            Gap(Get.height * 0.02),
            TextFormFielComponent(
              controller: controller.audioLengthController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              hintText: "Audio Length",
              iconData: Icons.audiotrack,
            ),
          ],
        ),
      ),
    );
  }
}
