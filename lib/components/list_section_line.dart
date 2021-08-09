import 'package:flutter/material.dart';
import '../constants.dart';
import '../colors.dart';

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
        border: Border.symmetric(
          horizontal: BorderSide(
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
