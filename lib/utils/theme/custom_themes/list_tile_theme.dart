import 'package:flutter/material.dart';
import 'package:mys/utils/constans/colors.dart';

class TListTileTheme {
  TListTileTheme._();

  static final lightListTileTheme = ListTileThemeData(
      titleTextStyle: TextStyle(color: TColors.primaryColor),
      subtitleTextStyle: TextStyle(color: TColors.primaryColor));

  static final darkListTileTheme = ListTileThemeData(
      titleTextStyle: TextStyle(color: Colors.white),
      subtitleTextStyle: TextStyle(color: Colors.white));
}
