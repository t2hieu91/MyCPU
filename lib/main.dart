import 'package:flutter/material.dart';
import 'package:my_cpu/pages/home_page.dart';
import './theme.dart';
import './routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My CPU',
        theme: theme(),
        initialRoute: HomePage.routeName,
        routes: routes,
      ),
    );
  }
}
