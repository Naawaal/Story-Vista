import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BookDetailCustomAppBarWidgetView extends GetView {
  const BookDetailCustomAppBarWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
