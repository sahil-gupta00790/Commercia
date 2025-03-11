import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/features/app/screens/cart/widgets/cart_items.dart';
import 'package:commercia/features/app/screens/checkout/checkout.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: AppCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text('Checkout ₹2500'),
        ),
      ),
    );
  }
}
