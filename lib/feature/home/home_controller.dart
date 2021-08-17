import 'package:get/get.dart';
import 'package:my_cpu/models/home_model.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  RxList<HomeModel> items = RxList.empty();

  @override
  void onInit() {
    super.onInit();

    setData();
  }

  void setData() {
    items.addAll([
      HomeModel(title: 'Device', titleData: 'iPhone X'),
      HomeModel(title: 'Processor', titleData: '1234Mhz'),
      HomeModel(title: 'Memory', titleData: '3GB'),
      HomeModel(title: 'Display', titleData: 'OLED 5.8"'),
      HomeModel(title: 'Camera', titleData: 'Dual 12 MegaPixels'),
      HomeModel(title: 'Network', titleData: 'Wi-Fi'),
      HomeModel(title: 'Battery', titleData: '80%'),
      HomeModel(title: 'Operating System', titleData: 'iOS 14.4.2'),
      HomeModel(title: 'Storage', titleData: '256 GB'),
    ]);
  }
}
