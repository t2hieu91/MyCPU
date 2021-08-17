import 'package:get/get_navigation/src/routes/get_route.dart';
import './routers.dart';

import 'package:my_cpu/core/binding/device_binding.dart';
import 'package:my_cpu/core/binding/home_binding.dart';
import 'package:my_cpu/feature/device/device_page.dart';
import 'package:my_cpu/feature/home/home_page.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: Routers.initialRoute,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routers.device,
      page: () => DevicePage(),
      binding: DeviceBinding(),
    ),
  ];
}
