import 'package:flutter/material.dart';
import 'package:mys/utils/constans/colors.dart';

class TDividerTheme {
  TDividerTheme._();

  static final lightDividerTheme =
      DividerThemeData(color: TColors.primaryColor);
  static final darkDividerTheme =
      DividerThemeData(color: Colors.white);
}
