import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size=AppSizes.md,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
        decoration: BoxDecoration(
          color: backgroundColor!=null?backgroundColor!
          :dark
              ? AppColors.black.withAlpha(230)
              : AppColors.white.withAlpha(230),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)));
  }
}
