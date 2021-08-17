import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cpu/core/routing/routers.dart';

import 'package:my_cpu/feature/home/home_controller.dart';
import 'package:my_cpu/widgets/line.dart';
import 'package:my_cpu/widgets/list_item_button.dart';
import 'package:my_cpu/widgets/list_section_line.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_cpu'.tr),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListSectionLine(title: 'OverView'),
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  itemCount: controller.items.length,
                  separatorBuilder: (ctx, index) => Line(),
                  itemBuilder: (ctx, index) {
                    final item = controller.items[index];
                    return ListItemButton(
                      onPress: () {
                        Get.toNamed(Routers.device);
                      },
                      title: item.title,
                      titleData: item.titleData,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
