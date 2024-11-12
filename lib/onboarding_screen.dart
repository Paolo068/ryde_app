import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              children: [
                Container(
                    width: 30,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue,
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Next'),
                ),
              ],
            )),
        PageView(
          children: const [
            Center(
              child: Text("Page 1"),
            ),
            Center(
              child: Text("Page 2"),
            ),
            Center(
              child: Text("Page 3"),
            ),
          ],
        ),
      ],
    ));
  }
}
