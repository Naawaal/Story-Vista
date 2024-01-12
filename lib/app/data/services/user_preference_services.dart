import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  /*
    * This is the private constructor of UserPreferences.
  */
  UserPreferences._();

  /*
    * This is the instance of UserPreferences.
  */
  static final UserPreferences _instance = UserPreferences._();

  /*
    * This is the factory constructor of UserPreferences.
  */
  factory UserPreferences() {
    return _instance;
  }

  /*
    * This method is used to save user logged in status to shared preferences.
  */
  Future<bool> saveUserLoggedIn({required bool value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool('isLoggedIn', value);
  }

  /*
    * This method is used to get user logged in status from shared preferences.
    * If the value is not found, it will return false.
  */
  Future<bool> getUserLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }
}
