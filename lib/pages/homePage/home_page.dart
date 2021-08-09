import 'package:flutter/material.dart';
import 'package:my_cpu/components/line.dart';
import 'package:my_cpu/components/list_item_button.dart';
import 'package:my_cpu/components/list_section_line.dart';
import 'package:my_cpu/pages/overviewPage/overview_page.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My CPU'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListSectionLine(title: 'OverView'),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (ctx, index) => Line(),
              itemBuilder: (ctx, index) {
                return ListItemButton(
                  onPress: () {
                    Navigator.pushNamed(context, OverviewPage.routeName);
                  },
                  title: 'Title',
                  titleData: 'Title Data',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
