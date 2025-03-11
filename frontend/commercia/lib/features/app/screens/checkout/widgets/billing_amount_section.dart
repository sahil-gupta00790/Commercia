import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBillingAmountSection extends StatelessWidget {
  const AppBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹2500',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹20',
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹600',
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),

        SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Total',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹3120',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),


      ],
    );
  }
}
