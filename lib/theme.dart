import 'package:flutter/material.dart';
import './constants.dart';
import './colors.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kMainBackGroundColor,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    textSelectionTheme: textSelectionTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 1,
    color: Colors.white,
    iconTheme: IconThemeData(color: kPrimaryColor),
    actionsIconTheme: IconThemeData(color: kPrimaryColor),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: kTitleTextColor,
        fontSize: 24.0,
      ),
    ),
  );
}

TextSelectionThemeData textSelectionTheme() =>
    TextSelectionThemeData(cursorColor: kPrimaryColor);

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      fontSize: 17,
      color: kSecondaryTextColor,
    ),
    headline2: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: kTextColor,
    ),
    headline3: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: kTextColor,
    ),
    headline4: TextStyle(
      fontSize: 13,
      color: kSecondaryTextColor,
    ),
    headline5: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: kSecondaryColor,
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: kOutlineColor),
    gapPadding: kDefaultPadding,
  );

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: kDefaultPadding,
    ),
    enabledBorder: outlineInputBorder,
    border: outlineInputBorder,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: kPrimaryColor),
      gapPadding: kDefaultPadding,
    ),
    hintStyle: TextStyle(
      color: kSecondaryTextColor,
    ),
  );
}

BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: kPrimaryColor,
    unselectedItemColor: kSecondaryTextColor,
    unselectedLabelStyle: TextStyle(height: 2),
    selectedLabelStyle: TextStyle(height: 2),
  );
}
