import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/common/widgets/images/app_circular_image.dart';
import 'package:commercia/common/widgets/texts/app_brand_title_text_with_verified_design.dart';
import 'package:commercia/common/widgets/texts/product_price_text.dart';
import 'package:commercia/common/widgets/texts/product_title_text.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/enums.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppProductMetaData extends StatelessWidget {
  const AppProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppRoundedContainer(
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
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '₹2500',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            AppProductPriceText(
              price: '2000',
              isLarge: true,
            )
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        AppProductTitleText(title: 'Green Nike Sports Shoes'),
        SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            AppProductTitleText(title: 'Status'),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            AppCircularImage(image: AppImages.cosmeticsIcon,width: 32,height: 32,overlayColor: dark?AppColors.white:AppColors.black,),
            AppBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandtextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
