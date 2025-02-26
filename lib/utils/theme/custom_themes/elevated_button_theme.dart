import 'package:flutter/material.dart';

/// -- Light & Dark Elevated Button Theme
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  /// -- Ligth Elevated Button Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white, 
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: Colors.blue, width: 1),
      padding: const EdgeInsets.symmetric( vertical: 18),
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  /// -- Dark Elevated Button Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white, 
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: Colors.blue, width: 1),
      padding: const EdgeInsets.symmetric( vertical: 18),
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}