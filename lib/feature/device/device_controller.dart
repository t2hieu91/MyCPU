import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:ui' as ui;
import 'package:my_cpu/models/home_model.dart';

class DeviceController extends GetxController {
  static DeviceController get to => Get.find();

  RxList<HomeModel> basicItems = RxList.empty();
  RxList<HomeModel> bluetoothItems = RxList.empty();
  RxList<HomeModel> dimensionsItems = RxList.empty();

  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  @override
  void onReady() {
    super.onReady();
    setData();
  }

  void setData() async {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    print(iosInfo.toMap());

    basicItems.addAll([
      HomeModel(
        title: 'Device Name',
        titleData: iosInfo.name.toString(),
      ),
      HomeModel(
        title: 'Model',
        titleData: iosInfo.model.toString(),
      ),
      HomeModel(
        title: 'Device String',
        titleData: '',
      ),
      HomeModel(
        title: 'Motherboard ID',
        titleData: '',
      ),
      HomeModel(
        title: 'Released',
        titleData: '',
      ),
    ]);

    bluetoothItems.addAll([
      HomeModel(
        title: 'Version',
        titleData: '',
      ),
      HomeModel(
        title: 'Controller',
        titleData: '',
      ),
      HomeModel(
        title: 'Bluetooth Smart',
        titleData: '',
      ),
    ]);
    dimensionsItems.addAll([
      HomeModel(
        title: 'Height',
        titleData: ui.window.physicalSize.height.toString(),
      ),
      HomeModel(
        title: 'Width',
        titleData: ui.window.physicalSize.width.toString(),
      ),
      HomeModel(
        title: 'Depth',
        titleData: '',
      ),
      HomeModel(
        title: 'Weight',
        titleData: '',
      ),
    ]);
  }
}
