import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nichrome_test/common/widgets/appbar/appbar.dart';
import 'package:nichrome_test/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:nichrome_test/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:nichrome_test/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:nichrome_test/unknown_locations/section_heading.dart';
import 'package:nichrome_test/utils/constants/colors.dart';
import 'package:nichrome_test/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            XPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  XAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: XColors.white),)),

                  /// User Profile Card
                  const XUserProfileTile(),
                  const SizedBox(height: XSizes.spaceBtwSections,),
                ],
              )
            ),
          
            /// -- Body
            Padding(
              padding: const EdgeInsets.all(XSizes.defaultSpace,),
              child: Column(
                children: [
                  /// -- Account Settings
                  const XSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: XSizes.spaceBtwItems,),

                  const XSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'hmmm'),
                  const XSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'hmmm'),
                  const XSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'hmmm'),

                  /// -- App Settings
                  const SizedBox(height: XSizes.spaceBtwSections,),
                  const XSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: XSizes.spaceBtwSections,),
                  const XSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your cloud firebase'),

                  /// -- Logout Button
                  const SizedBox(height: XSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: XSizes.spaceBtwSections * 2.5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}