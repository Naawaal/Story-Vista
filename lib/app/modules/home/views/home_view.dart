import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/modules/home/views/home_bottom_view.dart';
import 'package:story_vista/app/modules/home/views/home_custom_app_bar_widget_view.dart';
import 'package:story_vista/app/modules/home/views/home_top_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomeCustomAppBarWidgetView(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Column(
            children: [
              const HomeTopWidgetView(),
              Gap(Get.height * 0.01),
              const Expanded(child: HomeBottomView())
            ],
          ),
        ),
      ),
    );
  }
}
