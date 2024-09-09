import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nichrome_test/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:nichrome_test/utils/constants/sizes.dart';
import 'package:nichrome_test/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: XSizes.defaultSpace,
      bottom: XDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.grey[600],
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
