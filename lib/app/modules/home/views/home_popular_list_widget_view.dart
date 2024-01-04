import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class HomePopularListWidgetView extends GetView {
  const HomePopularListWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
            Gap(Get.height * 0.01),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: Get.width * 0.45,
                child: const Text(
                  "One Piece: Chapter 1000",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
