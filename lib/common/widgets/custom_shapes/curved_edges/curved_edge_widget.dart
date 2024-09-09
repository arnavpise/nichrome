import 'package:flutter/material.dart';
import 'package:nichrome_test/unknown_locations/curved_edges.dart';

class XCurvedEdgesWidget extends StatelessWidget {
  const XCurvedEdgesWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: XCustomCurvedEdges(),
      child: child,
    );
  }
}