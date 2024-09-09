import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nichrome_test/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:nichrome_test/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:nichrome_test/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:nichrome_test/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:nichrome_test/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:nichrome_test/utils/constants/image_strings.dart';
import 'package:nichrome_test/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: XImages.onBoardingImage1,
                title: XTexts.onBoardingSubTitle1,
                subTitle: XTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: XImages.onBoardingImage2,
                title: XTexts.onBoardingSubTitle2,
                subTitle: XTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: XImages.onBoardingImage3,
                title: XTexts.onBoardingSubTitle3,
                subTitle: XTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
