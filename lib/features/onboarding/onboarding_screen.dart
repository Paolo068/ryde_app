import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ryde_app/core/constants/assets/assets.gen.dart';
import 'package:ryde_app/core/layouts/app_default_layout.dart';
import 'package:ryde_app/core/utils/extensions.dart';
import 'package:ryde_app/features/onboarding/widgets/onboarding_widget.dart';

import '../../core/theme/pallete.dart';
import '../welcome_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppDefaultLayout(
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          PageView(
            onPageChanged: (value) => setState(() {
              _currentPage = value;
            }),
            controller: _pageController,
            children: [
              OnboardingWidget(
                image: Assets.images.onboarding1.image(),
                bigText: 'The best car in your hands with Ryde',
                smallText: 'Discover the convenience of finding your perfect ride with our Ryde App',
              ),
              OnboardingWidget(
                image: Assets.images.onboarding2.image(height: context.height * 0.43),
                bigText: 'The perfect ride is \njust a tap away!',
                smallText: 'Your journey begins with Ryde. Find your ideal ride effortlessly.',
              ),
              OnboardingWidget(
                image: Stack(
                  children: [
                    Positioned(child: Assets.images.onboardBG.image(height: context.height * 0.43)),
                    Assets.images.onboarding3.image(height: context.height * 0.43),
                  ],
                ),
                bigText: "Your ride, your way. \nLet's get started!",
                smallText: 'Enter your destination, sit back, and \nlet us take care of the rest.',
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: TextButton(
              onPressed: () => _pageController.jumpToPage(2),
              child: Text(
                "Skip",
                style: context.text.titleSmall?.copyWith(
                  color: Pallete.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: context.height * 0.06,
            child: Column(
              children: [
                Row(
                  children: List.generate(
                    3,
                    (index) => OnboardingIndicatorWidget(
                      currentPage: _currentPage,
                      pageIndex: index,
                    ),
                  ),
                ),
                const Gap(25),
                SizedBox(
                  width: context.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_currentPage < 2) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => const WelcomeScreen()), (predicate) => false);
                      }
                    },
                    child: Text(_currentPage < 2 ? 'Next' : 'Get started'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class OnboardingIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int pageIndex;
  const OnboardingIndicatorWidget({
    super.key,
    required this.currentPage,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool active = currentPage == pageIndex;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 30,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: active ? Pallete.active : Pallete.inactive,
        ));
  }
}
