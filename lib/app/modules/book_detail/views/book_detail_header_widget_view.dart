import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_detail/controllers/book_detail_controller.dart';

import 'book_detail_widget_view.dart';

class BookDetailHeaderWidgetView extends GetView<BookDetailController> {
  const BookDetailHeaderWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.009,
      ),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.primary,
      ),
      child: Column(
        children: [
          Gap(Get.height * 0.04),
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image(
              image: NetworkImage(
                controller.book.coverUrl.toString(),
              ),
              fit: BoxFit.cover,
              height: Get.height * 0.2,
              width: Get.width * 0.35,
            ),
          ),
          Gap(Get.height * 0.02),
          Text(
            controller.book.title.toString(),
            style: Get.textTheme.headlineSmall!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.01),
          Text(
            'By: ${controller.book.author.toString()}',
            style: Get.textTheme.labelLarge!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.01),
          Text(
            controller.book.description.toString(),
            textAlign: TextAlign.justify,
            style: Get.textTheme.labelSmall!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.02),
          const BookDetailWidgetView(),
          Gap(Get.height * 0.01),
        ],
      ),
    );
  }
}
