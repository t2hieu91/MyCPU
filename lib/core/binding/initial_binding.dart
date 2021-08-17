import 'package:get/get.dart';
import 'package:my_cpu/core/language/localization_service.dart';
import 'package:my_cpu/shared/shared_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.putAsync<SharedPreferences>(
      () async {
        final prefs = await SharedPreferences.getInstance();
        LocalizationService.changeLocale(
          prefs.getString(SharedHelper.sharedLanguage),
        );
        return prefs;
      },
      permanent: true,
    );
  }
}
