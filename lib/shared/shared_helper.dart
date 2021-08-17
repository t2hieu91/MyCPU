import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static final String sharedLanguage = "sharedLanguage";

  static String getLanguage() {
    final SharedPreferences prefs = Get.find<SharedPreferences>();
    return prefs.getString(sharedLanguage) ?? 'vi';
  }

  static Future<bool> setLanguage(String value) {
    final SharedPreferences prefs = Get.find<SharedPreferences>();
    return prefs.setString(sharedLanguage, value);
  }
}
