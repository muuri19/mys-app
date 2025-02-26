import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.grey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle()
        .copyWith(fontSize: 16, color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.black12, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.orange, width: 2),
      borderRadius: BorderRadius.circular(14),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.grey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle()
        .copyWith(fontSize: 16, color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.black12, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.orange, width: 2),
      borderRadius: BorderRadius.circular(14),
    ),
  );
}
