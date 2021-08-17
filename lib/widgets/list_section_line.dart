import 'package:flutter/material.dart';
import 'package:my_cpu/core/constants.dart';
import 'package:my_cpu/core/styles/styles.dart';
import 'package:my_cpu/core/themes/colors.dart';

class ListSectionLine extends StatelessWidget {
  const ListSectionLine({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kSectionLineColor,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: kSectionTextStyle(),
        ),
      ),
    );
  }
}
