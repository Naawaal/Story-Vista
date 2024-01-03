import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class HomeBottomView extends GetView {
  const HomeBottomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: Get.height * 0.009),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular',
            style: Get.textTheme.bodyMedium!.copyWith(
              color: Get.theme.colorScheme.onSurface,
            ),
          ),
          Gap(Get.height * 0.02),
          SizedBox(
            height: Get.height * 0.32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: Get.width * 0.44,
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
          ),
        ],
      ),
    );
  }
}
