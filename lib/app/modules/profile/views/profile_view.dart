import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/profile/views/profile_bottom_view.dart';
import 'package:story_vista/app/modules/profile/views/profile_top_view.dart';
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
            onPressed: () => Get.back(),
            child: const Text('Cancel'),
          ),
          confirm: TextButton(
            onPressed: () async {},
            child: const Text('Upload'),
          ),
          title: 'Upload Book',
          content: const ProfileUploadBookContentView(),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
