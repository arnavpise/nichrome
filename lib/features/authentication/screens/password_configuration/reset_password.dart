import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nichrome_test/utils/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(XSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            const Image(
                height: 100, image: AssetImage(r"assets/logos/nichrome.png")),
            const SizedBox(
              height: XSizes.spaceBtwSections,
            ),

            // Title & Subtitle
            const Text(
              'Password Reset Email Sent',
              style: TextStyle(
                  color: Color.fromARGB(255, 42, 42, 42),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: XSizes.spaceBtwItems,
            ),

            const Text(
              "We've sent you a link to safely change your pasword",
              style: TextStyle(
                  color: Color.fromARGB(255, 137, 137, 137), fontSize: 18),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: XSizes.spaceBtwSections,
            ),

            // Buttons
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text('Done')),
            ),

            const SizedBox(
              height: XSizes.spaceBtwItems,
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text('Resend Email')),
            ),
          ],
        ),
      ),
    );
  }
}
