import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_viewer/views/book_viewer_custom_app_bar_view.dart';

import '../controllers/book_viewer_controller.dart';

class BookViewerView extends GetView<BookViewerController> {
  const BookViewerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: BookViewerCustomAppBarView(),
      ),
    );
  }
}
