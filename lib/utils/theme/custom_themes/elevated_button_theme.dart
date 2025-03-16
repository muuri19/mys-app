import 'package:flutter/material.dart';
import '/utils/constans/colors.dart';

/// -- Light & Dark Elevated Button Theme
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  /// -- Ligth Elevated Button Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.primaryColor,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: TColors.primaryColor, width: 1),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      textStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  /// -- Dark Elevated Button Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.primaryColor,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: TColors.primaryColor, width: 1),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      textStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
