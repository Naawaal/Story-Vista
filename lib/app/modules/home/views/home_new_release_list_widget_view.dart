import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class HomeNewReleaseListWidgetView extends GetView {
  const HomeNewReleaseListWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 08,
        itemBuilder: (context, index) => Container(
          width: Get.width,
          padding: const EdgeInsets.all(04),
          margin: const EdgeInsets.all(04),
          decoration: BoxDecoration(
            color: Get.theme.colorScheme.secondary.withOpacity(0.9),
            borderRadius: BorderRadius.circular(08),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/png/manga.png',
                  fit: BoxFit.contain,
                  width: Get.width * 0.22,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'That Time I Got Reincarnated as a Slime',
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(Get.height * 0.004),
                    Text(
                      'By: Fuse, Mitz Vah',
                      style: Get.textTheme.labelSmall!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Gap(Get.height * 0.002),
                    Text(
                      'Price: Free',
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(Get.height * 0.002),
                    Text(
                      'Release Date: 2021-08-20',
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                      ),
                    ),
                    Gap(Get.height * 0.002),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        const Gap(2),
                        Text(
                          '4.5',
                          style: Get.textTheme.bodySmall!.copyWith(
                            color: Get.theme.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
