import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBillingAddressSection extends StatelessWidget {
  const AppBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          showActionsButton: true,
        ),
        Text(
          'Home',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '+91 98642 98742',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                'Flat number 1029,Sai Charan Apartment, Streett number 5, SaifaNagar, Amritsar,Punjab-402345',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
                
              ),
            ),
          ],
        ),
      ],
    );
  }
}
