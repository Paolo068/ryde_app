import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ryde_app/core/constants/assets/assets.gen.dart';
import 'package:ryde_app/core/layouts/app_default_layout.dart';
import 'package:ryde_app/core/utils/extensions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(child: Assets.images.homeBg.image()),
          Text(
            "Let's get started",
            textAlign: TextAlign.center,
            style: context.text.headlineMedium?.copyWith(
              fontWeight: FontWeight.w900,
            ),
          ),
          const Gap(10),
          SizedBox(
            width: context.width * 0.65,
            child: const Text(
              textAlign: TextAlign.center,
              softWrap: true,
              "Sign up or log in to find out the best car for you",
            ),
          ),
          const Gap(20),
          AppDefaultLayout(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 8),
                  onPressed: () {},
                  child: const Text("Sign Up"),
                ),
                const Gap(20),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xffCED1DD),
                    )),
                    Gap(15),
                    Text(
                      "Or",
                      style: TextStyle(),
                    ),
                    Gap(15),
                    Expanded(
                        child: Divider(
                      color: Color(0xffCED1DD),
                    )),
                  ],
                ),
                const Gap(15),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text("Log In with Google"),
                  icon: Assets.images.googleLogo.image(
                    height: 20,
                  ),
                ),
                Gap(context.height * 0.05),
                Text.rich(
                  TextSpan(
                    text: "Don’t have an account? ",
                    style: const TextStyle(
                      color: Color(0xff858585),
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: "Log in",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
