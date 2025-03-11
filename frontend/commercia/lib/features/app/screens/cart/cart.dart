import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/products/cart/add_remove_button.dart';
import 'package:commercia/common/widgets/products/cart/cart_item.dart';
import 'package:commercia/common/widgets/texts/product_price_text.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => Column(
                  children: [
                    AppCartItem(),
                    SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
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
            itemCount: 14),
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(AppSizes.defaultSpace),child: ElevatedButton(onPressed: (){}, child: Text('Checkout ₹2500'))),
    );
  }
}

