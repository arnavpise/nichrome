import 'package:flutter/material.dart';

class XLoginHeader extends StatelessWidget {
  const XLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 80),
        const Image(
          height: 100,
          image: AssetImage(r"assets/logos/nichrome.png"),
        ),
        const SizedBox(height: 30),
        Text(
          'Infinite Possibilities with Innovation',
          style: TextStyle(color: Colors.grey[600]),
        )
      ],
    );
  }
}
