import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nichrome_test/features/authentication/controllers/login/login_controller.dart';
import 'package:nichrome_test/utils/constants/colors.dart';
import 'package:nichrome_test/utils/constants/image_strings.dart';
import 'package:nichrome_test/utils/constants/sizes.dart';

class XSocialButton extends StatelessWidget {
  const XSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: XColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.googleSignIn(),
            icon: const Image(
              width: XSizes.iconMd,
              height: XSizes.iconMd,
              image: AssetImage(XImages.google),
            ),
          ),
        )
      ],
    );
  }
}
