import 'package:flutter/material.dart';
import 'package:mys/utils/constans/colors.dart';

class TDividerTheme {
  TDividerTheme._();

  static const lightDividerTheme =
      DividerThemeData(color: TColors.primaryColor);
  static const darkDividerTheme = DividerThemeData(color: Colors.white);
}
