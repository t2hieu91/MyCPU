import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './core/binding/initial_binding.dart';
import './core/routing/pages.dart';
import './core/routing/routers.dart';
import './core/themes/themes.dart';
import './core/language/localization_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My CPU',
        smartManagement: SmartManagement.full,
        initialBinding: InitialBinding(),
        initialRoute: Routers.initialRoute,
        getPages: Pages.getPages,
        theme: Themes.light,
        translations: LocalizationService(),
        locale: LocalizationService.locale,
        fallbackLocale: LocalizationService.fallbackLocale,
      ),
    );
  }
}
