import 'package:flutter/material.dart';
import 'package:my_cpu/pages/homePage/home_page.dart';
import 'package:my_cpu/pages/overviewPage/overview_page.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (ctx) => HomePage(),
  OverviewPage.routeName: (ctx) => OverviewPage(),
};
