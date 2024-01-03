import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeNewReleaseListWidgetView extends GetView {
  const HomeNewReleaseListWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: Get.height * 0.2,
          width: Get.width,
          margin: const EdgeInsets.all(05),
          decoration: BoxDecoration(
            color: Get.theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/png/manga.png',
                  fit: BoxFit.contain,
                  height: Get.height,
                  width: Get.width * 0.35,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Manga Title',
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Author Name',
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Genre',
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: Get.theme.colorScheme.onPrimary,
                      ),
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
