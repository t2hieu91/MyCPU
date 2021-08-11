import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  static String routeName = "/dummy-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Get Battery'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
