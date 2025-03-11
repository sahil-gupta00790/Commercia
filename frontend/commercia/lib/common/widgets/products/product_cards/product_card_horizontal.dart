import 'package:commercia/common/styles/shadows.dart';
import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/common/widgets/icons/app_circular_icon.dart';
import 'package:commercia/common/widgets/images/app_rounded_image.dart';
import 'package:commercia/common/widgets/texts/app_brand_title_text_with_verified_design.dart';
import 'package:commercia/common/widgets/texts/product_price_text.dart';
import 'package:commercia/common/widgets/texts/product_title_text.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductCardHorizontal extends StatelessWidget {
  const AppProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [AppShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.softGrey),
      child: Row(
        children: [
          AppRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                AppRoundedImage(
                  imageUrl: AppImages.productImage1,
                  applyImageRadius: true,
                ),
                Positioned(
                  child: AppRoundedContainer(
                    radius: AppSizes.sm,
                    backgroundColor: AppColors.secondary.withAlpha(204),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: AppColors.black),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    icon: Iconsax.heart,
                    color: Colors.red,
                    width: 32,
                    height: 32,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppProductTitleText(
                        title: 'Green Nike Shoes',
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwItems / 2,
                      ),
                      AppBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: AppProductPriceText(price: '2500')),
                      
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: AppSizes.iconLg * 1.2,
                          height: AppSizes.iconLg * 1.2,
                          child: Center(
                            child: const Icon(
                              Iconsax.add,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
