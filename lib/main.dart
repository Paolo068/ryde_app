import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryde_app/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.plusJakartaSans().fontFamily),
      home: const SplashScreen(),
    );
  }
}