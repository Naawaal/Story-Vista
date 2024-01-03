import 'package:flutter/material.dart';
import 'package:story_vista/app/utils/app_color_util.dart';

class AppThemeUtil {
  AppThemeUtil._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColorUtil.primaryColor,
    fontFamily: 'Poppins',
  );
}
