import 'package:get/get.dart';

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
        snackPosition: SnackPosition.BOTTOM,
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
        snackPosition: SnackPosition.BOTTOM,
        duration: 2.seconds,
      );
}
