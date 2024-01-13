import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/data/models/book_model.dart';
import 'package:story_vista/app/modules/profile/controllers/profile_controller.dart';

class ProfileUploadedBookView extends GetView<ProfileController> {
  const ProfileUploadedBookView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<List<BookModel?>>(
        stream: controller.getUserUploadedBooks(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: Text('No Connection'));
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
              if (snapshot.hasError || snapshot.data == null) {
                return const Center(child: Text('Error'));
              } else if (snapshot.data!.isEmpty) {
                return const Center(child: Text('No Books Uploaded'));
              } else if (snapshot.data!.isNotEmpty && snapshot.hasData) {
                final List<BookModel?> books = snapshot.data!;
                return ListView.builder(
                  itemCount: books.length,
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
                            snapshot.data![index]!.coverUrl.toString(),
                            fit: BoxFit.cover,
                            height: Get.height * 0.10,
                            width: Get.width * 0.20,
                          ),
                        ),
                        Gap(Get.width * 0.01),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                books[index]!.title.toString(),
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: Get.theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Gap(Get.height * 0.004),
                              Text(
                                "By: ${books[index]!.author.toString()}",
                                style: Get.textTheme.labelSmall!.copyWith(
                                  color: Get.theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(Get.height * 0.002),
                              Text(
                                'Price: \$${books[index]!.price.toString()}',
                                style: Get.textTheme.bodySmall!.copyWith(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Gap(Get.height * 0.002),
                              Text(
                                'Release Date: ${books[index]!.year.toString()}',
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
              return const Center(child: Text('Data is not available'));
            default:
              return const Center(child: Text('Something went wrong'));
          }
        },
      ),
    );
  }
}
