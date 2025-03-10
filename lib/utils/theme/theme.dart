import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mys/utils/constans/colors.dart';
import 'package:mys/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mys/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mys/utils/theme/custom_themes/card_theme.dart';
import 'package:mys/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mys/utils/theme/custom_themes/chip_theme.dart';
import 'package:mys/utils/theme/custom_themes/divider_theme.dart';
import 'package:mys/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:mys/utils/theme/custom_themes/list_tile_theme.dart';
import 'package:mys/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mys/utils/theme/custom_themes/switch_theme.dart';
import 'package:mys/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mys/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// ------------------ Light Theme Data ------------------
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.nunito().fontFamily,
      brightness: Brightness.light,
      primaryColor: TColors.primaryColor,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Color(0xFFFBFBFB),
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonThemeData,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      cardTheme: TCardTheme.lightCardTheme,
      switchTheme: TSwitchTheme.lightSwitchThemewitchTheme,
      dividerTheme: TDividerTheme.lightDividerTheme,
      listTileTheme: TListTileTheme.lightListTileTheme);

  /// ------------------ Dark Theme Data ------------------
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.nunito().fontFamily,
      brightness: Brightness.dark,
      primaryColor: TColors.primaryColor,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Color(0xff1A1A1D),
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonThemeData,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      cardTheme: TCardTheme.darkCardTheme,
      switchTheme: TSwitchTheme.darkSwitchTheme,
      dividerTheme: TDividerTheme.darkDividerTheme,
      listTileTheme: TListTileTheme.darkListTileTheme);
}
