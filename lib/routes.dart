import 'package:flutter/material.dart';
import 'package:my_cpu/connects/dummy_page.dart';
import 'package:my_cpu/pages/homePage/home_page.dart';
import 'package:my_cpu/pages/overviewPage/overview_page.dart';

final Map<String, WidgetBuilder> routes = {
  DummyPage.routeName: (ctx) => DummyPage(),
  HomePage.routeName: (ctx) => HomePage(),
  OverviewPage.routeName: (ctx) => OverviewPage(),
};
