import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormFielComponent extends StatelessWidget {
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final IconData? iconData;
  final String hintText;
  final int? maxLines;
  const TextFormFielComponent({
    super.key,
    required this.controller,
    required this.hintText,
    this.textInputAction,
    this.keyboardType,
    this.iconData,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      clipBehavior: Clip.antiAlias,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(08),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Get.theme.colorScheme.secondary,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        prefixIcon: iconData != null
            ? Icon(
                iconData,
                color: Get.theme.colorScheme.secondary,
              )
            : null,
      ),
    );
  }
}
