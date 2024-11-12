import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryde_app/core/theme/pallete.dart';

class AppFilledButtonTheme {
  static final light = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      ),
      shape: const StadiumBorder(),
      backgroundColor: Pallete.btnColor,
      foregroundColor: Colors.white,
    ),
  );
}
