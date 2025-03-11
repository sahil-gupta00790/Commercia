import 'package:commercia/common/widgets/layout/grid_layout.dart';
import 'package:commercia/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppSortableWidget extends StatelessWidget {
  const AppSortableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (value) {},
        ),
        SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        AppGridLayout(itemCount: 4, itemBuilder: (_,index)=>AppProductCardVertical())
      ],
    );
  }
}
