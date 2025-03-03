import 'package:flutter/material.dart';
import 'package:mys/utils/constans/colors.dart';

class TSwitchTheme {
  TSwitchTheme._();

  static SwitchThemeData lightSwitchThemewitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.withOpacity(0.4);
      }
      return Colors.white;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.withOpacity(0.4);
      }
      return Colors.grey;
    }),
  );

  static SwitchThemeData darkSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.withOpacity(0.4);
      }
      return Colors.white;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.withOpacity(0.4);
      }
      return TColors.primaryColor;
    }),
  );
}
