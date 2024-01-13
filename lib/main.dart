import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/app_theme_util.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: "StoryVista",
      initialRoute: await AppPages.initialRoute,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      theme: AppThemeUtil.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: AppThemeUtil.lightTheme,
    ),
  );
}
