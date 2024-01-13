import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/data/models/book_model.dart';
import 'package:story_vista/app/modules/home/controllers/home_controller.dart';

class HomeNewReleaseListWidgetView extends GetView<HomeController> {
  const HomeNewReleaseListWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<List<BookModel?>>(
        stream: controller.newReleaseBooks,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: Text("No data"));
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
              if (snapshot.hasError || !snapshot.hasData) {
                return const Center(child: Text("Something went wrong"));
              } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                return const Center(child: Text("No data"));
              } else {
                final data = snapshot.data;
                return ListView.builder(
                  itemCount: data!.length,
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
                          child: Image.network(
                            data[index]!.coverUrl.toString(),
                            fit: BoxFit.cover,
                            height: Get.height * 0.14,
                            width: Get.width * 0.22,
                          ),
                        ),
                        Gap(Get.width * 0.02),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data[index]!.title.toString(),
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: Get.theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Gap(Get.height * 0.004),
                              Text(
                                "By: ${data[index]!.author.toString()}",
                                style: Get.textTheme.labelSmall!.copyWith(
                                  color: Get.theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(Get.height * 0.002),
                              Text(
                                'Price: \$${data[index]!.price.toString()}',
                                style: Get.textTheme.bodySmall!.copyWith(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Gap(Get.height * 0.002),
                              Text(
                                'Release Date: ${data[index]!.year.toString()}',
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
                );
              }
            default:
              return const Center(child: Text("Something went wrong"));
          }
        },
      ),
    );
  }
}
