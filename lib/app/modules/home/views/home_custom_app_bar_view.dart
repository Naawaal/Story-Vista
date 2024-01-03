import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeCustomAppBarView extends GetView {
  const HomeCustomAppBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
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
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: Get.theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
