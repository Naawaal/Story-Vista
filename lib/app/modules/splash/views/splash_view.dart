import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: Get.width,
              color: Get.theme.colorScheme.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/png/manga.png',
                    width: Get.width * 0.4,
                    fit: BoxFit.contain,
                  ),
                  Gap(Get.height * 0.02),
                  Text(
                    'Story Vista',
                    style: Get.textTheme.headlineMedium!.copyWith(
                      color: Get.theme.colorScheme.onPrimary,
                    ),
                  ),
                  Gap(Get.height * 0.01),
                  Text(
                    "Your portal to limitless stories. Explore, read, and immerse yourself.",
                    style: Get.textTheme.bodyMedium!
                        .copyWith(color: Get.theme.colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              color: Colors.transparent,
              child: Column(
                children: [
                  Gap(Get.height * 0.02),
                  Text(
                    "Disclaimer",
                    style: Get.textTheme.labelLarge,
                  ),
                  Gap(Get.height * 0.02),
                  Text(
                    'This app is for educational purposes only. All stories are from the internet and are not owned by the developer or the publisher. All rights reserved to the respective owners.',
                    textAlign: TextAlign.justify,
                    style: Get.textTheme.labelSmall!.copyWith(
                      color: Get.theme.colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ButtonWidget(),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.offNamed('/home'),
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        backgroundColor: Get.theme.colorScheme.secondary,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(06),
        ),
      ),
      child: Text(
        'Continue',
        style: Get.textTheme.bodyMedium,
      ),
    ).marginAll(05);
  }
}
