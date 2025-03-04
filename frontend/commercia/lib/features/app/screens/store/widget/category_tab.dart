import 'package:commercia/common/widgets/brands/brand_show_case.dart';
import 'package:commercia/common/widgets/layout/grid_layout.dart';
import 'package:commercia/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppBrandShowCase(
                images: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage24
                ],
              ),
              AppSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              AppGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => AppProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
