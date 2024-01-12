import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class BookDetailWidgetView extends GetView {
  const BookDetailWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Rating',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
            Gap(Get.height * 0.01),
            Text(
              '4.5',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Views',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
            Gap(Get.height * 0.01),
            Text(
              '1.5M',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Likes',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
            Gap(Get.height * 0.01),
            Text(
              '1.5M',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Language',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
            Gap(Get.height * 0.01),
            Text(
              'ENG',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Audio',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
            Gap(Get.height * 0.01),
            Text(
              '2.5 hrs',
              style: Get.textTheme.labelSmall!.copyWith(
                color: Get.theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
