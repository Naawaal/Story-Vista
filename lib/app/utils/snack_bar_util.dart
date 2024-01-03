import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_vista/app/utils/app_color_util.dart';

class SnackBarUtil {
  /*
    * SnackBarUtil._(); is a private named 
    * constructor. The underscore _ makes it 
    * private to this library. This constructor cannot be called 
    * from outside this class, which helps to maintain the Singleton property.
    * during the entire app life cycle
  */
  SnackBarUtil._();

  /*
    * The factory SnackBarUtil() => _instance; line is a factory constructor.
    * Factory constructors in Dart can return an instance from a cache, return 
    * an instance of a subtype, or return an instance of a type that parses a type. 
    * In this case, it's returning the single instance of SnackBarUtil that was created 
    * earlier. Any time you try to create a new SnackBarUtil, you'll get this instance instead,
    * ensuring that only one SnackBarUtil exists.
  */
  factory SnackBarUtil() => _instance;

  /*
    * The static final SnackBarUtil _instance = SnackBarUtil._(); 
    * line is where the single instance of SnackBarUtil is created. 
    * This instance is static, meaning it belongs to the class itself, 
    * not to instances of the class. It's also final, so once it's assigned,
    * it cannot be changed. The instance is created by calling the private constructor.
  */
  static final SnackBarUtil _instance = SnackBarUtil._();

  /*
    * The Get.snackbar() method is used to show a snackbar.
    * This snackbar is used to show success messages.
    * The first parameter is the title of the snackbar,
    * the second parameter is the message of the snackbar,
  */
  static showSuccessSnackBar(String message) => Get.snackbar(
        "Success",
        message,
        borderRadius: 06,
        margin: const EdgeInsets.symmetric(
          horizontal: 05,
          vertical: 10,
        ),
        colorText: AppColorUtil.blackColor,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(
          Icons.check_circle_outline,
          color: AppColorUtil.whiteColor,
        ),
        backgroundColor: AppColorUtil.sucessColor,
        duration: 2.seconds,
      );

  /*
    * The Get.snackbar() method is used to show a snackbar.
    * This snackbar is used to show error messages.
    * The first parameter is the title of the snackbar,
    * the second parameter is the message of the snackbar,
  */
  static showErrorSnackBar(String message) => Get.snackbar(
        "Error",
        message,
        borderRadius: 06,
        margin: const EdgeInsets.symmetric(
          horizontal: 05,
          vertical: 10,
        ),
        colorText: AppColorUtil.whiteColor,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.error_outline, color: AppColorUtil.whiteColor),
        backgroundColor: AppColorUtil.errorColor,
        duration: 2.seconds,
      );

  static showWarningSnackBar(String message) => Get.snackbar(
        "Warning",
        message,
        borderRadius: 06,
        margin: const EdgeInsets.symmetric(
          horizontal: 05,
          vertical: 10,
        ),
        colorText: AppColorUtil.blackColor,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        icon: const Icon(Icons.warning, color: AppColorUtil.whiteColor),
        backgroundColor: AppColorUtil.warningColor,
        duration: 2.seconds,
      );
}
