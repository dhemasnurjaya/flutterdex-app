import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// App light theme
ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF6F43C0),
  ),
  useMaterial3: true,
  fontFamily: GoogleFonts.dmSans().fontFamily,
);

/// App dark theme
ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF6F43C0),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  fontFamily: GoogleFonts.dmSans().fontFamily,
);
