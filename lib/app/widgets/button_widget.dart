import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const ButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.065,
      child: ElevatedButton(
        onPressed: onPressed,
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          backgroundColor: Get.theme.colorScheme.primary,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(06),
          ),
          animationDuration: 10.milliseconds,
        ),
        child: Text(
          text,
          style: Get.textTheme.bodyLarge!.copyWith(
            color: Get.theme.colorScheme.onPrimary,
          ),
        ),
      ).marginAll(05),
    );
  }
}
