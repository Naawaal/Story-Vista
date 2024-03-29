import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_viewer/views/book_viewer_custom_app_bar_view.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../controllers/book_viewer_controller.dart';

class BookViewerView extends GetView<BookViewerController> {
  const BookViewerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: BookViewerCustomAppBarView(),
      ),
      body: SfPdfViewer.network(
        controller.book.pdfUrl.toString(),
        canShowHyperlinkDialog: false,
        canShowScrollHead: false,
        interactionMode: PdfInteractionMode.pan,
      ),
    );
  }
}
