import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/brands/brand_card.dart';
import 'package:commercia/common/widgets/products/sortable/sortable_products.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppBrandCard(showBorder: true),
              SizedBox(height: AppSizes.spaceBtwSections,),
              AppSortableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
