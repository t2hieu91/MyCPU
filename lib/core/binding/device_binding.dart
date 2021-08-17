import 'package:get/get.dart';
import 'package:my_cpu/feature/device/device_controller.dart';

class DeviceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceController>(() => DeviceController());
  }
}
