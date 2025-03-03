import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // Primary & Secondary Colors
  static const Color primaryColor = Color(0xFF2C1A4A); // Ungu Gelap
  static const Color secondaryColor = Color(0xFFFFFFFF); // Putih

  // Accent Color
  static const Color accentColor = Color(0xFFA020F0); // Ungu Muda

  // Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF); // Putih untuk kontras
  static const Color textSecondary = Color(0xFFBDBDBD); // Abu-abu terang

  // Background Colors
  static const Color background = Color(0xFF2C1A4A); // Warna dasar
  static const Color backgroundDark =
      Color(0xFF1E0F33); // Lebih gelap untuk mode dark

  // Background Container Colors
  static const Color containerLight = Color(0xFFF5E1FF); // Ungu muda
  static const Color containerDark = Color(0xFF1E0F33); // Warna lebih gelap

  // Button Colors
  static const Color buttonPrimary = Color(0xFFA020F0); // Warna utama
  static const Color buttonSecondary = Color(0xFFFFFFFF); // Putih

  // Border Colors
  static const Color borderPrimary = Color(0xFFA020F0); // Warna border
  static const Color borderSecondary = Color(0xFFBDBDBD); // Abu-abu

  // Error and Validation Colors
  static const Color error = Color(0xFFD50000); // Merah terang
  static const Color success = Color(0xFF4CAF50); // Hijau sukses

  // Neutral Shades
  static const Color neutralLight = Color(0xFFE0E0E0); // Abu-abu terang
  static const Color neutralDark = Color(0xFF616161); // Abu-abu gelap

  // Gradient Colors
  static const Gradient gradientPrimary = LinearGradient(
    colors: [Color(0xFF2C1A4A), Color(0xFFA020F0)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient gradientSecondary = LinearGradient(
    colors: [Color(0xFFA020F0), Color(0xFFF5E1FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
