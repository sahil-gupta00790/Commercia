import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppOrderListItems extends StatelessWidget {
  const AppOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,index)=>SizedBox(height: AppSizes.spaceBtwItems,),
      itemCount: 10,
      itemBuilder:(_,index)=> AppRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(AppSizes.md),
        backgroundColor: AppHelperFunctions.isDarkMode(context)
            ? AppColors.dark
            : AppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Iconsax.ship),
                SizedBox(
                  width: AppSizes.spaceBtwItems / 2,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: AppColors.primary, fontWeightDelta: 1),
                    ),
                    Text('11 Mar 2025',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.arrow_right_34,
                    size: AppSizes.iconSm,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwItems,),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Iconsax.tag),
                    SizedBox(
                      width: AppSizes.spaceBtwItems / 2,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                        ),
                        Text('[#256f2]',
                            style: Theme.of(context).textTheme.labelMedium),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                 Row(
                  children: [
                    Icon(Iconsax.calendar),
                    SizedBox(
                      width: AppSizes.spaceBtwItems / 2,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shipping Date',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                        ),
                        Text('12 Mar 2025',
                            style: Theme.of(context).textTheme.labelMedium),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
