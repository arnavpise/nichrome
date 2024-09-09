import 'package:flutter/material.dart';
import 'package:nichrome_test/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:nichrome_test/utils/constants/colors.dart';
import 'package:nichrome_test/utils/constants/sizes.dart';
import 'package:nichrome_test/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: XDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: XSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: XColors.light, dotHeight: 6)));
  }
}