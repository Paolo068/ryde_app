import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryde_app/core/theme/pallete.dart';

class AppOutlinedButtonTheme {
  static final light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Pallete.blackColor,
      minimumSize: const Size.fromHeight(55),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      ),
      side: const BorderSide(color: Pallete.btnBorderColor),
      shape: const StadiumBorder(),
    ),
  );
}
