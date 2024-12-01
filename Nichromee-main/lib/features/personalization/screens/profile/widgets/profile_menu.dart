import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nichrome_test/utils/constants/sizes.dart';

class XProfileMenu extends StatelessWidget {
  const XProfileMenu({
    super.key,
    required this.onPressed,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: XSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text('Name', style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis,)),
            Expanded(flex: 5, child: Text('Arnav Pise', style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,)),
            const Expanded(child: Icon(Iconsax.arrow_right_34, size: 18,))
            ],
        ),
      ),
    );
  }
}