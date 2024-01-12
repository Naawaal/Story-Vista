import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/upload_book_controller.dart';

class UploadBookView extends GetView<UploadBookController> {
  const UploadBookView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Dialog.fullscreen(
      child: Scaffold(
        body: Center(
          child: Text('UploadBookView'),
        ),
      ),
    );
  }
}
