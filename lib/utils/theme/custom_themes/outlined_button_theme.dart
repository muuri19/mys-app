import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.blue, width: 1),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
  static final darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.blueAccent, width: 1),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
