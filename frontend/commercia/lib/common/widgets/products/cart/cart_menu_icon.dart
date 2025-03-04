import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppCartCounterWidget extends StatelessWidget {
  const AppCartCounterWidget({
    super.key, required this.onPressed,this.iconColor,
  });
  final VoidCallback onPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor ?? (dark?AppColors.white:AppColors.black),
          ),
        ),
        Positioned(
          right:0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.black.withAlpha(120),
              borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}
