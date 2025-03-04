import 'package:commercia/common/widgets/brands/brand_card.dart';
import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppBrandShowCase extends StatelessWidget {
  const AppBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(AppSizes.md),
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwInputFields),
      child: Column(
        children: [
          AppBrandCard(showBorder: false),
          Row(
              children: images
                  .map((e) => brandTopProductImageWidget(e, context))
                  .toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, BuildContext context) {
    return Expanded(
      child: AppRoundedContainer(
        height: 100,
        backgroundColor: AppHelperFunctions.isDarkMode(context)
            ? AppColors.darkerGrey
            : AppColors.light,
        margin: EdgeInsets.only(right: AppSizes.sm),
        padding: EdgeInsets.all(AppSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}