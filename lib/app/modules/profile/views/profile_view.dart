import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/views/profile_bottom_view.dart';
import 'package:story_vista/app/modules/profile/views/profile_top_view.dart';
import 'package:story_vista/app/modules/profile/views/profile_add_new_book.dart';

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: const Column(
            children: [
              ProfileTopView(),
              ProfileBottomView(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => Get.defaultDialog(
          radius: 08,
          cancel: TextButton(
            onPressed: () {
              Get.back();
              controller.clearTextEditingControllers();
            },
            child: const Text('Cancel'),
          ),
          confirm: TextButton(
            onPressed: () async => controller.uploadBookData(),
            child: const Text('Upload'),
          ),
          title: 'Upload Book',
          content: const ProfileAddNewBook(),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
