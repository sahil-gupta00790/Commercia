import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/products/sortable/sortable_products.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: AppSortableWidget(),
        ),
      ),
    );
  }
}

