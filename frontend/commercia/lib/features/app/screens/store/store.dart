import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/appbar/tabbar.dart';
import 'package:commercia/common/widgets/custom_shapes/container/search_container.dart';
import 'package:commercia/common/widgets/layout/grid_layout.dart';
import 'package:commercia/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:commercia/common/widgets/brands/brand_card.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/features/app/screens/store/widget/category_tab.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppAppBar(
          title: Text('Store'),
          actions: [
            AppCartCounterWidget(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? AppColors.black : AppColors.white,
                  expandedHeight: 400,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(AppSizes.defaultSpace),
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        AppSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        AppSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: AppSizes.spaceBtwItems / 2,
                        ),
                        AppGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return AppBrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: Tabbar(tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ]))
            ];
          },
          body: TabBarView(
            children: [
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}




