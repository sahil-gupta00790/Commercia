import 'package:commercia/common/widgets/products/cart/add_remove_button.dart';
import 'package:commercia/common/widgets/products/cart/cart_item.dart';
import 'package:commercia/common/widgets/texts/product_price_text.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCartItems extends StatelessWidget {
  const AppCartItems({
    super.key, this.showAddRemoveButtons=true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, index) => Column(
                children: [
                  AppCartItem(),
                  if(showAddRemoveButtons)SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                   if(showAddRemoveButtons)
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      AppProductQuantityWithAddRemoveButton(),
                      Spacer(),
                      AppProductPriceText(price: '2500')
                    ],
                  )
                ],
              ),
          separatorBuilder: (_, __) => SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
          itemCount: 2),
    );
  }
}

