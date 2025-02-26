import 'package:flutter/material.dart';
import 'package:mys/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mys/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mys/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mys/utils/theme/custom_themes/chip_theme.dart';
import 'package:mys/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:mys/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mys/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mys/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// ------------------ Light Theme Data ------------------
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonThemeData,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
   
  );


  /// ------------------ Dark Theme Data ------------------
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonThemeData,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
   
  );
  
}