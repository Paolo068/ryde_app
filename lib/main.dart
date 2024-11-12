import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryde_app/core/theme/app_theme.dart';
import 'package:ryde_app/features/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const SplashScreen(),
    );
  }
}
