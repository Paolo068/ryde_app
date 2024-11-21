import 'package:flutter/material.dart';

import '../../core/constants/assets/assets.gen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Assets.images.homeBg.image(),
        const Column(
          children: [
            Text("Email"),
          ],
        )
      ]),
    );
  }
}
