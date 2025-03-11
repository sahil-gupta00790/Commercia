import 'package:commercia/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:commercia/common/widgets/custom_shapes/container/search_container.dart';
import 'package:commercia/common/widgets/layout/grid_layout.dart';
import 'package:commercia/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/features/app/screens/all_products/all_products.dart';
import 'package:commercia/features/app/screens/home/widgets/home_appbar.dart';
import 'package:commercia/features/app/screens/home/widgets/home_categories.dart';
import 'package:commercia/features/app/screens/home/widgets/promo_slider.dart';
import 'package:commercia/utilities/constants/image_strings.dart';

import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  AppHomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  AppSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppSectionHeading(
                          title: 'Popular Categories',
                          showActionsButton: false,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),
                        //categories

                        AppHomeCategories(),
                        const SizedBox(height: AppSizes.spaceBtwSections,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  AppPromoSlider(
                    banners: [
                      AppImages.banner1,
                      AppImages.banner2,
                      AppImages.banner3
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  AppSectionHeading(title: 'Popular Products',onPressed: ()=>Get.to(()=>AllProducts()),),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  AppGridLayout(itemCount: 4,itemBuilder: (_,index)=>const AppProductCardVertical(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

