
import 'package:commercia/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:commercia/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgesWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: AppCircularContainer(
                backgroundColor: AppColors.textWhite.withAlpha(25),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: AppCircularContainer(
                backgroundColor: AppColors.textWhite.withAlpha(25),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
