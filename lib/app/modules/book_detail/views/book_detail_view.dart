import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/book_detail/views/book_detail_custom_app_bar_widget_view.dart';
import 'package:story_vista/app/modules/book_detail/views/book_detail_header_widget_view.dart';
import 'package:story_vista/app/routes/app_pages.dart';
import 'package:story_vista/app/widgets/button_widget.dart';

import '../controllers/book_detail_controller.dart';

class BookDetailView extends GetView<BookDetailController> {
  const BookDetailView({Key? key}) : super(key: key);
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
          Expanded(
            child: ButtonWidget(
              text: 'Read Now',
              onPressed: () => Get.toNamed(Routes.BOOK_VIEWER),
            ),
          ),
          Expanded(child: ButtonWidget(text: 'Play Audio', onPressed: () {})),
        ],
      ),
    );
  }
}
