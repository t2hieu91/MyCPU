import 'package:flutter/material.dart';

import './colors.dart';

class Themes {
  static get light => ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kMainBackGroundColor,
        appBarTheme: appBarTheme(),
      );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 1,
    color: Colors.white,
    iconTheme: IconThemeData(color: kPrimaryColor),
    actionsIconTheme: IconThemeData(color: kPrimaryColor),
    toolbarTextStyle: TextTheme(
      headline6: TextStyle(
        color: kTitleTextColor,
        fontSize: 24.0,
      ),
    ).bodyText2,
    titleTextStyle: TextTheme(
      headline6: TextStyle(
        color: kTitleTextColor,
        fontSize: 24.0,
      ),
    ).headline6,
  );
}
