import 'package:flutter/material.dart';

class TColors {
  TColors._();
  static const Color primaryColor = Color(0xFFFF0000); // Merah Indonesia
  static const Color secondaryColor = Color(0xFFFFFFFF); // Putih

  // App Basic Colors
  static const Color accentColor = Color(0xFFD32F2F); // Merah lebih gelap

  // Text Colors
  static const Color textPrimary = Color(0xFF000000); // Hitam untuk kontras
  static const Color textSecondary =
      Color(0xFF757575); // Abu-abu untuk teks sekunder

  // Background Colors
  static const Color background = Color(0xFFFFFFFF); // Putih
  static const Color backgroundDark =
      Color(0xFFB71C1C); // Merah tua untuk mode gelap

  // Background Container Colors
  static const Color containerLight = Color(0xFFFFEBEE); // Merah muda
  static const Color containerDark = Color(0xFFD32F2F); // Merah tua

  // Button Colors
  static const Color buttonPrimary = Color(0xFFFF0000); // Merah
  static const Color buttonSecondary = Color(0xFFFFFFFF); // Putih

  // Border Colors
  static const Color borderPrimary = Color(0xFFD32F2F); // Merah tua
  static const Color borderSecondary = Color(0xFFBDBDBD); // Abu-abu

  // Error and Validation Colors
  static const Color error = Color(0xFFD50000); // Merah terang
  static const Color success = Color(0xFF4CAF50); // Hijau untuk validasi sukses

  // Neutral Shades
  static const Color neutralLight = Color(0xFFE0E0E0); // Abu-abu terang
  static const Color neutralDark = Color(0xFF616161); // Abu-abu gelap

  // Gradient Colors
  static const Gradient gradientPrimary = LinearGradient(
    colors: [Color(0xFFFF0000), Color(0xFFD32F2F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient gradientSecondary = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFFE0E0E0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
