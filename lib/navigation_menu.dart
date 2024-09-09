import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nichrome_test/features/personalization/screens/settings/settings.dart';
import 'package:nichrome_test/features/shop/screens/home/widgets/home.dart';
import 'package:nichrome_test/features/shop/screens/scan/WIDGETS/scan.dart';
import 'package:nichrome_test/utils/constants/colors.dart';
import 'package:nichrome_test/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = XHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? XColors.black: Colors.white,
          indicatorColor: darkMode ? XColors.white.withOpacity (0.1): XColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.category), label: 'Category'),
            NavigationDestination(icon: Icon(Iconsax.scan), label: 'Scan'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [ const HomeScreen(), Container(color: Colors.purple,), const Scan(), const SettingsScreen()];
}