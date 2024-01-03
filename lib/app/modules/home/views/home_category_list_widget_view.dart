import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/controllers/home_controller.dart';

import '../../../widgets/categories_widget.dart';

class HomeCategoryListWidgetView extends GetView<HomeController> {
  const HomeCategoryListWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: controller.categoriesData.length,
      itemBuilder: (context, index) {
        return CategoriesWidget(
          icon: controller.categoriesData[index]['icon'],
          title: controller.categoriesData[index]['title'],
        );
      },
    );
  }
}
