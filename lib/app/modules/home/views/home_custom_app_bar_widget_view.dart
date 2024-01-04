import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeCustomAppBarWidgetView extends GetView {
  const HomeCustomAppBarWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Get.theme.colorScheme.primary,
      elevation: 0,
      title: Text(
        'Story Vista',
        style: Get.textTheme.headlineMedium!.copyWith(
          color: Get.theme.colorScheme.onPrimary,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.dashboard, color: Get.theme.colorScheme.onPrimary),
      ),
      actions: [
        IconButton(
          onPressed: () => Get.toNamed(Routes.PROFILE),
          icon: Icon(
            Icons.person,
            color: Get.theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
