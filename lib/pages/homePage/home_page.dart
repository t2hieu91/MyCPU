import 'package:flutter/material.dart';
import 'package:my_cpu/components/line.dart';
import 'package:my_cpu/components/list_item_button.dart';
import 'package:my_cpu/components/list_section_line.dart';
import 'package:my_cpu/pages/homePage/home_data.dart';
import 'package:my_cpu/pages/overviewPage/overview_page.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home-page";

  @override
  Widget build(BuildContext context) {
    final overviewItems = overviewData;

    return Scaffold(
      appBar: AppBar(
        title: Text('My CPU'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListSectionLine(title: 'OverView'),
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  itemCount: overviewItems.length,
                  separatorBuilder: (ctx, index) => Line(),
                  itemBuilder: (ctx, index) {
                    final item = overviewItems[index];
                    return ListItemButton(
                      onPress: () {
                        Navigator.pushNamed(
                          context,
                          OverviewPage.routeName,
                          arguments: {
                            'title': item.title,
                          },
                        );
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
