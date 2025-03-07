import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/features/app/screens/product_details/widgets/bottom_add_to_card.dart';
import 'package:commercia/features/app/screens/product_details/widgets/product_attribute.dart';
import 'package:commercia/features/app/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:commercia/features/app/screens/product_details/widgets/product_meta_data.dart';
import 'package:commercia/features/app/screens/product_details/widgets/rating_share_widget.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  AppRatingAndShare(),
                  AppProductMetaData(),
                  ProductAttributes(),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  AppSectionHeading(
                    title: 'Description',
                    showActionsButton: false,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'Something kjbesdfg kwsejdbg eiksgb dsgjkvb e gjkdeb gikesgn vdkbg ekg kgbeiksjb gnejkgb eigbkeigb eikgkiejgbn egv retkighn edog erloh rldh bor hbler, hbikr hbkerl hbikrew ghk,lwermg ikwergkewrg hbkwer ghbkrewjhn grehg',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  SizedBox(height: AppSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSectionHeading(title: 'Reviews(199)',onPressed: (){},showActionsButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
