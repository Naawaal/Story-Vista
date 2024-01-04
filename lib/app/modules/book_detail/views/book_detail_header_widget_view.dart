import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import 'book_detail_widget_view.dart';

class BookDetailHeaderWidgetView extends GetView {
  const BookDetailHeaderWidgetView({Key? key}) : super(key: key);
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
              image: const AssetImage(
                'assets/png/manga.png',
              ),
              fit: BoxFit.cover,
              width: Get.width * 0.35,
            ),
          ),
          Gap(Get.height * 0.02),
          Text(
            'One Piece: Chapter 1000',
            style: Get.textTheme.headlineSmall!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.01),
          Text(
            'By: Eiichiro Oda',
            style: Get.textTheme.labelLarge!.copyWith(
              color: Get.theme.colorScheme.onPrimary,
            ),
          ),
          Gap(Get.height * 0.01),
          Text(
            'ONE PIECE is a legendary high-seas quest unlike any other. Luffy is a young adventurer who has longed for a life of freedom ever since he can remember. He sets off from his small village on a perilous journey to find the legendary fabled treasure, ONE PIECE, to become King of the Pirates',
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
