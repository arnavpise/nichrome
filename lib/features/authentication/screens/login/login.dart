import 'package:flutter/material.dart';
import 'package:nichrome_test/common/styles/spacing_styles.dart';
import 'package:nichrome_test/common/widgets/login_signup/social_buttons.dart';
import 'package:nichrome_test/features/authentication/screens/login/widgets/login_header.dart';
import 'package:nichrome_test/features/authentication/screens/login/widgets/login_form.dart';
import 'package:nichrome_test/common/widgets/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: XSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and Sub-title
              XLoginHeader(),

              // Form
              XLoginForm(),

              SizedBox(height: 10),

              // Divider
              XFormDivider(dividerText: 'Or Sign In With'),

              SizedBox(height: 30),

              // Footer
              XSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
