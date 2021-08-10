import 'package:flutter/material.dart';

class HomeModel {
  final String title;
  final String titleData;
  final IconData? iconData;

  HomeModel({
    required this.title,
    this.titleData = '',
    this.iconData,
  });
}
