import 'package:flutter/material.dart';
import 'package:my_cpu/core/themes/colors.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: kSectionLineColor,
    );
  }
}
