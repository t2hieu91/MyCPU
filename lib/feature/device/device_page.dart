import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cpu/feature/device/device_controller.dart';
import 'package:my_cpu/widgets/line.dart';
import 'package:my_cpu/widgets/list_item_button.dart';
import 'package:my_cpu/widgets/list_section_line.dart';

class DevicePage extends GetView<DeviceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('device'.tr),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListSectionLine(title: 'BASIC'),
                Container(
                  height: controller.basicItems.length * 60,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.basicItems.length,
                    separatorBuilder: (ctx, index) => Line(),
                    itemBuilder: (ctx, index) {
                      final item = controller.basicItems[index];
                      return ListItemButton(
                        onPress: () {
                          print('onPress: ${item.title}');
                        },
                        title: item.title,
                        titleData: item.titleData,
                        showRightAction: false,
                      );
                    },
                  ),
                ),
                ListSectionLine(title: 'BLUETOOTH'),
                Container(
                  height: controller.bluetoothItems.length * 60,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.bluetoothItems.length,
                    separatorBuilder: (ctx, index) => Line(),
                    itemBuilder: (ctx, index) {
                      final item = controller.bluetoothItems[index];
                      return ListItemButton(
                        onPress: () {
                          print('onPress: ${item.title}');
                        },
                        title: item.title,
                        titleData: item.titleData,
                        showRightAction: false,
                      );
                    },
                  ),
                ),
                ListSectionLine(title: 'DIMENSIONS'),
                Container(
                  height: controller.dimensionsItems.length * 60,
                  child: Scrollbar(
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.dimensionsItems.length,
                      separatorBuilder: (ctx, index) => Line(),
                      itemBuilder: (ctx, index) {
                        final item = controller.dimensionsItems[index];
                        return ListItemButton(
                          onPress: () {
                            print('onPress: ${item.title}');
                          },
                          title: item.title,
                          titleData: item.titleData,
                          showRightAction: false,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
