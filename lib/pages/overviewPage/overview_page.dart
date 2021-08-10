import 'package:flutter/material.dart';
import 'package:my_cpu/components/line.dart';
import 'package:my_cpu/components/list_item_button.dart';
import 'package:my_cpu/components/list_section_line.dart';

import './overview_data.dart';

class OverviewPage extends StatelessWidget {
  static String routeName = "/overview-page";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final title = args['title'];
    final basicItems = basicData;
    final bluetoothItems = bluetoothData;
    final dimensionsItems = dimensionsData;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListSectionLine(title: 'BASIC'),
                Container(
                  height: basicItems.length * 60,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: basicItems.length,
                    separatorBuilder: (ctx, index) => Line(),
                    itemBuilder: (ctx, index) {
                      final item = basicItems[index];
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
                  height: bluetoothItems.length * 60,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: bluetoothItems.length,
                    separatorBuilder: (ctx, index) => Line(),
                    itemBuilder: (ctx, index) {
                      final item = bluetoothItems[index];
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
                  height: dimensionsItems.length * 60,
                  child: Scrollbar(
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: dimensionsItems.length,
                      separatorBuilder: (ctx, index) => Line(),
                      itemBuilder: (ctx, index) {
                        final item = dimensionsItems[index];
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
