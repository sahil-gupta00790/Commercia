import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/common/widgets/products/cart/coupon_widget.dart';
import 'package:commercia/common/widgets/success_screen/success_screen.dart';
import 'package:commercia/features/app/screens/cart/widgets/cart_items.dart';
import 'package:commercia/features/app/screens/checkout/widgets/billing_address_section.dart';
import 'package:commercia/features/app/screens/checkout/widgets/billing_amount_section.dart';
import 'package:commercia/features/app/screens/checkout/widgets/billing_payment_section.dart';
import 'package:commercia/navigation_menu.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppAppBar(
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                AppCartItems(showAddRemoveButtons: false),
                SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                AppCouponCode(),
                SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                AppRoundedContainer(
                  padding: EdgeInsets.all(AppSizes.md),
                  showBorder: true,
                  backgroundColor: dark ? AppColors.black : AppColors.white,
                  child: Column(
                    children: [
                      AppBillingAmountSection(),
                      SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                      Divider(),
                      SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                      AppBillingPaymentSection(),
                      SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                      AppBillingAddressSection()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                      image: AppImages.paymentSuccessful,
                      title: 'Payment Success!',
                      subtitle: 'Your item will be shipped soon!',
                      onPressed: () => Get.offAll(
                        () => NavigationMenu(),
                      ),
                    )),
                child: Text('Checkout ₹2500'))));
  }
}
