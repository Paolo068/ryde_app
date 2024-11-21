import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ryde_app/core/utils/extensions.dart';

class OnboardingWidget extends StatelessWidget {
  final Widget image;
  final String bigText, smallText;
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Gap( context.height * 0.1),
      image,
      const Gap(30),
      SizedBox(
        width: context.width * 0.8,
        child: Text(
          bigText,
          textAlign: TextAlign.center,
          style: context.text.headlineMedium?.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      // child: Text.rich(
      //   softWrap: true,
      //   textAlign: TextAlign.center,
      //   style: context.text.headlineMedium?.copyWith(fontWeight: FontWeight.w900),
      //   const TextSpan(children: [
      //     TextSpan(style: TextStyle(color: Pallete.blueColor), text: "Ryde"),
      //   ], text: "The best car in your hands with "),
      // ),

      const Gap(10),
      SizedBox(
        width: context.width * 0.65,
        child: Text(
          textAlign: TextAlign.center,
          softWrap: true,
          smallText,
        ),
      )
    ]);
  }
}
