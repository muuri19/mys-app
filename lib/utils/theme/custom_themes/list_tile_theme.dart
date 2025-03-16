import 'package:flutter/material.dart';
import '/utils/constans/colors.dart';

class TListTileTheme {
  TListTileTheme._();

  static const lightListTileTheme = ListTileThemeData(
      titleTextStyle: TextStyle(color: TColors.primaryColor),
      subtitleTextStyle: TextStyle(color: TColors.primaryColor));

  static const darkListTileTheme = ListTileThemeData(
      titleTextStyle: TextStyle(color: Colors.white),
      subtitleTextStyle: TextStyle(color: Colors.white));
}
