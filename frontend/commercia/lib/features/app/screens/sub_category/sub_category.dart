import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/images/app_rounded_image.dart';
import 'package:commercia/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppRoundedImage(
                width: double.infinity,
                imageUrl: AppImages.banner3,
                applyImageRadius: true,
              ),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              Column(
                children: [
                  AppSectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>SizedBox(width: AppSizes.spaceBtwItems,),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => AppProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
