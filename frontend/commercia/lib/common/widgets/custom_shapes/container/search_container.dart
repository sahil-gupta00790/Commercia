import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/device/device_utility.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key, required this.text, this.icon=Iconsax.search_normal, this.showBackground=true, this.showBorder=true, this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBackground,showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.buttonRadius),
        child: Container(
          width: AppDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: showBackground?dark?AppColors.dark:AppColors.light:Colors.transparent,
            borderRadius:
                BorderRadius.circular(AppSizes.cardRadiusLg),
            border:showBorder? Border.all(color:dark?AppColors.dark:AppColors.light):null,
          ),
          child: Row(
            children: [
              Icon(Iconsax.search_normal,color: AppColors.darkerGrey,),
              const SizedBox(width: AppSizes.spaceBtwItems,),
              Text('Search in Store',style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
