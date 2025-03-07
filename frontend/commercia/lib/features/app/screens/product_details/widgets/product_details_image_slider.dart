import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:commercia/common/widgets/icons/app_circular_icon.dart';
import 'package:commercia/common/widgets/images/app_rounded_image.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductImageSlider extends StatelessWidget {
  const AppProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppCurvedEdgesWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                    AppSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AppImages.productImage1),
                  ),
                ),
              ),
            ),
            //image slider
    
            Positioned(
              right: 0,
              bottom: 30,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => AppRoundedImage(
                    width: 80,
                    backgroundColor:
                        dark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primary),
                    padding: EdgeInsets.all(AppSizes.sm),
                    imageUrl: AppImages.productImage2,
                  ),
                ),
              ),
            ),
            AppAppBar(
              showBackArrow: true,
              actions: [
                AppCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
