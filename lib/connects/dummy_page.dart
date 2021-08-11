import 'package:flutter/material.dart';
import './dummy_data.dart';

class DummyPage extends StatefulWidget {
  static String routeName = "/dummy-page";

  @override
  _DummyPageState createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  String _deviceName = 'Unknown Name.';

  _getDeviceName() async {
    String result = await getDeviceName();
    setState(() {
      _deviceName = result;
    });
  }

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
                onPressed: _getDeviceName,
                child: Text('Get Device Name'),
              ),
              Text(_deviceName),
            ],
          ),
        ),
      ),
    );
  }
}
