import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppSingleAddress extends StatelessWidget {
  const AppSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      padding: EdgeInsets.all(AppSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddress ? Colors.blue.withAlpha(127) : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkerGrey
              : AppColors.grey,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(children: [
        Positioned(
          right: 5,
          top: 0,
          child: Icon(
            selectedAddress ? Iconsax.tick_circle5 : null,
            color: selectedAddress
                ? dark
                    ? AppColors.light
                    : AppColors.dark
                : null,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'YashRaj Kumawat',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: AppSizes.sm / 2,
            ),
            Text(
              '(+123) 98745 12563',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              
            ),
            const SizedBox(
              height: AppSizes.sm / 2,
            ),
            Text(
              'Flat number 1029,Sai Charan Apartment, Streett number 5, SaifaNagar, Amritsar,Punjab-402345',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
              softWrap: true,

            ),
          ],
        )
      ]),
    );
  }
}
