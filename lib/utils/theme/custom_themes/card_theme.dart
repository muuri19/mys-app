import 'package:flutter/material.dart';

class TCardTheme {
  TCardTheme._();

  static CardTheme lightCardTheme = CardTheme(
    color: Colors.white,
    surfaceTintColor: Colors.white,
    elevation: 4,
    shadowColor: Colors.grey,
    margin: const EdgeInsets.only(bottom: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
  static CardTheme darkCardTheme = CardTheme(
    color: Colors.black,
    surfaceTintColor: Colors.black,
    elevation: 4,
    shadowColor: Colors.grey,
    margin: const EdgeInsets.only(bottom: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
