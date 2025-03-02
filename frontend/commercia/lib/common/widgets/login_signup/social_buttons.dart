import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage(AppImages.google),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage(AppImages.facebook),
            ),
          ),
        ),
    
      ],
    );
  }
}