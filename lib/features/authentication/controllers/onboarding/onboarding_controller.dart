import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nichrome_test/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selection page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('IsFirstTime', false);
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
