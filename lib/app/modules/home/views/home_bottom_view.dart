import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeBottomView extends GetView {
  const HomeBottomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: Get.height * 0.009),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular',
            style: Get.textTheme.bodyMedium!.copyWith(
              color: Get.theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
