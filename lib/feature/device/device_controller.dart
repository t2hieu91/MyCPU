import 'package:get/get.dart';
import 'package:my_cpu/models/home_model.dart';

class DeviceController extends GetxController {
  static DeviceController get to => Get.find();

  RxList<HomeModel> basicItems = RxList.empty();
  RxList<HomeModel> bluetoothItems = RxList.empty();
  RxList<HomeModel> dimensionsItems = RxList.empty();

  @override
  void onInit() {
    super.onInit();

    setData();
  }

  void setData() {
    basicItems.addAll([
      HomeModel(title: 'Device Name', titleData: ''),
      HomeModel(title: 'Model', titleData: 'iPhone X'),
      HomeModel(title: 'Device String', titleData: ''),
      HomeModel(title: 'Motherboard ID', titleData: ''),
      HomeModel(title: 'Released', titleData: ''),
    ]);
    bluetoothItems.addAll([
      HomeModel(title: 'Version', titleData: ''),
      HomeModel(title: 'Controller', titleData: ''),
      HomeModel(title: 'Bluetooth Smart', titleData: ''),
    ]);
    dimensionsItems.addAll([
      HomeModel(title: 'Height', titleData: ''),
      HomeModel(title: 'Width', titleData: ''),
      HomeModel(title: 'Depth', titleData: ''),
      HomeModel(title: 'Weight', titleData: ''),
    ]);
  }
}
