import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/common/widgets/images/app_circular_image.dart';
import 'package:commercia/common/widgets/texts/app_brand_title_text_with_verified_design.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/enums.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        padding: EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: AppCircularImage(
                image: AppImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                    AppHelperFunctions.isDarkMode(
                            context)
                        ? AppColors.white
                        : AppColors.black,
                isNetworkImage: false,
              ),
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  AppBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandtextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
