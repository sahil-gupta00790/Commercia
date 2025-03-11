import 'package:commercia/common/widgets/images/app_rounded_image.dart';
import 'package:commercia/common/widgets/texts/app_brand_title_text_with_verified_design.dart';
import 'package:commercia/common/widgets/texts/product_title_text.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppCartItem extends StatelessWidget {
  const AppCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppRoundedImage(
          imageUrl: AppImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(AppSizes.sm),
          backgroundColor:
              AppHelperFunctions.isDarkMode(context)
                  ? AppColors.darkerGrey
                  : AppColors.light,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBrandTitleTextWithVerifiedIcon(
                title: 'Nike',
              ),
              Flexible(
                child: AppProductTitleText(
                  title: 'Sports shoes',
                  maxLines: 1,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'US 10',style: Theme.of(context).textTheme.bodySmall),
              ],),)
            ],
          ),
        )
      ],
    );
  }
}
