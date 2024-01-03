import 'package:flutter/material.dart';
import 'package:story_vista/app/utils/app_color_util.dart';

class AppThemeUtil {
  AppThemeUtil._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColorUtil.contrastColor,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColorUtil.primaryColor,
      onPrimary: AppColorUtil.whiteColor,
      secondary: AppColorUtil.secondaryColor,
      onSecondary: AppColorUtil.whiteColor,
      error: AppColorUtil.errorColor,
      onError: AppColorUtil.whiteColor,
      background: AppColorUtil.backgroundColor,
      onBackground: AppColorUtil.blackColor,
      surface: AppColorUtil.contrastColor,
      onSurface: AppColorUtil.blackColor,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      labelLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      ),
    ),
    fontFamily: 'Poppins',
  );
}
