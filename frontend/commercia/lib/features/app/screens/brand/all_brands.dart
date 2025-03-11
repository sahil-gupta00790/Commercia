import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/brands/brand_card.dart';
import 'package:commercia/common/widgets/layout/grid_layout.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/features/app/screens/brand/brand_product.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppSectionHeading(
                title: 'Brands',
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              AppGridLayout(itemCount: 10, itemBuilder: (context,index)=>AppBrandCard(showBorder: true,onTap:()=>Get.to(()=>BrandProducts()) ,),mainAxisExtent: 80,)
            ],
          ),
        ),
      ),
    );
  }
}
