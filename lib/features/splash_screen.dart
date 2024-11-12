import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryde_app/core/utils/extensions.dart';
import 'package:ryde_app/features/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _redirectToHome(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 4),
        () => context.mounted
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const OnboardingScreen()),
              )
            : null);
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values); // to re-show bars
  }

  @override
  Widget build(BuildContext context) {
    _redirectToHome(context);
    return Scaffold(
      body: Container(
        color: const Color(0xff2F80ED),
        child: Center(
          child: Text(
            "Ryde",
            style: context.text.displayLarge
                ?.copyWith(color: Colors.white, fontFamily: GoogleFonts.racingSansOne().fontFamily),
          ),
        ),
      ),
    );
  }
}
