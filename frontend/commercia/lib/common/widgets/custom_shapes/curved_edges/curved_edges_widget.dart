import 'package:commercia/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class AppCurvedEdgesWidget extends StatelessWidget {
  const AppCurvedEdgesWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: AppCustomCurvedEdges(), child: child);
  }
}