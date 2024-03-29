import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/controllers/home_controller.dart';
import 'package:story_vista/app/routes/app_pages.dart';

class HomePopularListWidgetView extends GetView<HomeController> {
  const HomePopularListWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(Routes.BOOK_DETAIL),
              child: Container(
                width: Get.width * 0.41,
                height: Get.height * 0.25,
                margin: EdgeInsets.only(right: Get.width * 0.02),
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Get.theme.colorScheme.primary.withOpacity(0.2),
                      blurRadius: 09,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ),
            Gap(Get.height * 0.01),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: Get.width * 0.45,
                child: const Text(
                  "One Piece: Chapter 1000",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
