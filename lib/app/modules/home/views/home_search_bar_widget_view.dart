import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeSearchBarWidgetView extends GetView {
  const HomeSearchBarWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      clipBehavior: Clip.antiAlias,
      enableSuggestions: true,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      style: Get.textTheme.bodyMedium!
          .copyWith(color: Get.theme.colorScheme.onPrimary),
      decoration: InputDecoration(
        hintText: 'Search here...',
        hintStyle: Get.textTheme.bodyMedium!.copyWith(
          color: Get.theme.colorScheme.onPrimary,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Get.theme.colorScheme.onPrimary,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Get.theme.colorScheme.onPrimary.withOpacity(0.1),
      ),
    );
  }
}
