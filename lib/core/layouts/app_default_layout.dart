import 'package:flutter/material.dart';

class AppDefaultLayout extends StatelessWidget {
  final Widget child;
  const AppDefaultLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: child,
        ),
      ),
    );
  }
}
