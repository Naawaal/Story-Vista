import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_viewer/controllers/book_viewer_controller.dart';

class BookViewerCustomAppBarView extends GetView<BookViewerController> {
  const BookViewerCustomAppBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Book Viewer',
        style: Get.textTheme.headlineMedium!.copyWith(
          color: Get.theme.colorScheme.onPrimary,
        ),
      ),
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
