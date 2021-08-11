import 'package:flutter/services.dart';

const platform = const MethodChannel('com.example.myCpu/deviceName');

Future<String> getDeviceName() async {
  String result;
  try {
    final deviceName = await platform.invokeMethod('getDeviceName');
    result = 'Device Name: $deviceName .';
  } on PlatformException catch (e) {
    result = "Failed to get Device name: '${e.message}'.";
  }

  return result;
}
