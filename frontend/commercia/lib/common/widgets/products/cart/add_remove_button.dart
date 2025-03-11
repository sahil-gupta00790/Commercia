import 'package:commercia/common/widgets/icons/app_circular_icon.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductQuantityWithAddRemoveButton extends StatelessWidget {
  const AppProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppHelperFunctions.isDarkMode(context)
              ? AppColors.white
              : AppColors.black,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        AppCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppColors.white,
          backgroundColor: Colors.blueAccent,
        ),
      ],
    );
  }
}
