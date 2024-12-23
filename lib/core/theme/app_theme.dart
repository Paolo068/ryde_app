import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryde_app/core/theme/customs/app_text_theme.dart';
import 'package:ryde_app/core/theme/customs/elevated_button_theme.dart';
import 'package:ryde_app/core/theme/customs/outlined_button_theme.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    useMaterial3: true,
    textTheme: AppTextTheme.light,
    elevatedButtonTheme: AppElevatedButtonTheme.light,
    outlinedButtonTheme: AppOutlinedButtonTheme.light
    // elevatedButtonTheme:
  );
}
