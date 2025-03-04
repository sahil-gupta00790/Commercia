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

class AppProductCardVertical extends StatelessWidget {
  const AppProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [AppShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
            color: dark ? AppColors.darkerGrey : AppColors.white),
        child: Column(
          children: [
            AppRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  AppRoundedImage(
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
                    height: 180,
                  ),
                  Positioned(
                    top: 12,
                    child: AppRoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.secondary.withAlpha(204),
                      padding: const EdgeInsets.symmetric(
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
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      width: 40,
                      height: 40,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  AppBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                  ),
                  
                ],
              ),
            ),
            Spacer(),
                  Padding(

                    padding: const EdgeInsets.only(left:12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppProductPriceText(price: "2500",),
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
                              ))),
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}


