import 'package:commercia/common/widgets/chips/choice_chip.dart';
import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/common/widgets/texts/product_price_text.dart';
import 'package:commercia/common/widgets/texts/product_title_text.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        AppRoundedContainer(
          padding: EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  AppSectionHeading(
                    title: 'Variation',
                    showActionsButton: false,
                  ),
                  SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),
                          Text(
                            '₹1899',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),
                          AppProductPriceText(price: '1799')
                        ],
                      ),
                      Row(
                        children: [
                          const AppProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              AppProductTitleText(
                title: 'Description of the product, in 4 lines max',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSectionHeading(title: 'Colors',showActionsButton: false,),
            SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSectionHeading(title: 'Size'),
            SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
              text: '9',
              selected: true,
              onSelected: (value) {},
            ),
            AppChoiceChip(
              text: '10',
              selected: false,
              onSelected: (value) {},
            ),
            AppChoiceChip(
              text: '11',
              selected: false,
              onSelected: (value) {},
            ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
