import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_detail/views/book_custom_app_bar_widget_view.dart';
import 'package:story_vista/app/modules/book_detail/views/book_detail_widget_view.dart';
import 'package:story_vista/app/widgets/button_widget.dart';

import '../controllers/book_detail_controller.dart';

class BookDetailView extends GetView<BookDetailController> {
  const BookDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: BookCustomAppBarWidgetView()),
      body: Column(
        children: [
          Container(
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
          ),
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
                    "About Book",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: Get.theme.colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(Get.height * 0.005),
                  Text(
                    "ONE PIECE is a legendary high-seas quest unlike any other. Luffy is a young adventurer who has longed for a life of freedom ever since he can remember. He sets off from his small village on a perilous journey to find the legendary fabled treasure, ONE PIECE, to become King of the Pirates",
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
                    "Eiichiro Oda is a Japanese manga artist and the creator of the series One Piece (1997–present). With more than 480 million tankōbon copies in circulation worldwide, One Piece is both the best-selling manga and the best-selling comic series of all time, in turn making Oda one of the best-selling fiction authors.",
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
          Expanded(child: ButtonWidget(text: 'Read Now', onPressed: () {})),
          Expanded(child: ButtonWidget(text: 'Play Audio', onPressed: () {})),
        ],
      ),
    );
  }
}
