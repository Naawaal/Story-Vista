import 'package:flutter/material.dart';

class AppColorUtil {
  /*
    * Private constructor to prevent instantiation
    * of this class directly from outside this class.
  */
  AppColorUtil._();

  /*
    * Static constant variable of type Color
    * This is a relatively darker shade among the ones you 
    * provided. It could be used for primary actions and 
    * emphasis. For example, you could use it for buttons, 
    * clickable elements, or important text
  */
  static const Color primaryColor = Color(0xffBE9FE1);

  /*
    * Static constant variable of type Color
    * C9B6E4: This is a slightly lighter shade. 
    * It could be used for secondary actions or information. 
    * For example, secondary text, less important buttons, 
    * or as a hover color for interactive elements.
  */
  static const Color secondaryColor = Color(0xffC9B6E4);

  /*
    * #E1CCEC: This is a very light shade. It could be used 
    * for backgrounds or to group content. For example, use 
    * it as a background color for cards, modals, or sections 
    * of the page.
  */
  static const backgroundColor = Color(0xFFE1CCEC);

  /*
    * Static constant variable of type Color
    * #F1F1F6: This is almost white. It could 
    * be used for the main background or for 
    * elements where you want a contrast with 
    * the other colors. For example, the main 
    * background, input fields, or containers.
  */
  static const contrastColor = Color(0xFFF1F1F6);

  /*
    * Static constant variable of type Color
    * Green color to show success messages
  */
  static const sucessColor = Colors.green;

  /*
    * Static constant variable of type Color
    * Red color to show error messages
  */
  static const errorColor = Colors.red;

  /*
    * Static constant variable of type Color
    * Yellow color to show warning messages
  */
  static const warningColor = Colors.yellow;

  /*
    * Static constant variable of type Color
    * Blue color to show info messages
  */
  static const infoColor = Colors.blue;

  /*
    * Static constant variable of type Color
    * White color to show text on dark background or
    * to show text on red background or icon on red background
  */
  static const whiteColor = Colors.white;

  /*
    * Static constant variable of type Color
    * Black color to show text on light background
    * or to show text on green background or icon on green background
  */
  static const blackColor = Colors.black;
}
