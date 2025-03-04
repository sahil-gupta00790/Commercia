import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/icons/app_circular_icon.dart';
import 'package:commercia/common/widgets/layout/grid_layout.dart';
import 'package:commercia/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:commercia/features/app/screens/home/home.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          AppCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppGridLayout(itemCount: 8, itemBuilder: (_,index)=>AppProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
