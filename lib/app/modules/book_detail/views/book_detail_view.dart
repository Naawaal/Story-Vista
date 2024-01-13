import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_detail/views/book_detail_custom_app_bar_widget_view.dart';
import 'package:story_vista/app/modules/book_detail/views/book_detail_header_widget_view.dart';
import 'package:story_vista/app/routes/app_pages.dart';
import 'package:story_vista/app/components/button_widget.dart';

import '../controllers/book_detail_controller.dart';

class BookDetailView extends GetView<BookDetailController> {
  const BookDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: BookDetailCustomAppBarWidgetView(),
      ),
      body: Column(
        children: [
          const BookDetailHeaderWidgetView(),
          Expanded(
            child: Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.009,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(Get.height * 0.005),
                  Text(
                    'About Book',
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(Get.height * 0.005),
                  Text(
                    controller.book.description.toString(),
                    textAlign: TextAlign.justify,
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: Get.theme.colorScheme.onBackground,
                    ),
                  ),
                  Gap(Get.height * 0.005),
                  Text(
                    "About Author",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(Get.height * 0.005),
                  Text(
                    controller.book.aboutAuthor.toString(),
                    textAlign: TextAlign.justify,
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: Get.theme.colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: ButtonWidget(
              text: 'Read Now',
              onPressed: () =>
                  Get.toNamed(Routes.BOOK_VIEWER, arguments: controller.book),
            ),
          ),
          Expanded(child: ButtonWidget(text: 'Play Audio', onPressed: () {})),
        ],
      ),
    );
  }
}
