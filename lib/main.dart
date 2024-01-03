import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/app_theme_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "StoryVista",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      theme: AppThemeUtil.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: AppThemeUtil.lightTheme,
    ),
  );
}
