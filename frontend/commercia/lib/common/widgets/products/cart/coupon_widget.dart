import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppCouponCode extends StatelessWidget {
  const AppCouponCode({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AppColors.dark : AppColors.white,
      padding: EdgeInsets.only(
          top: AppSizes.sm,
          bottom: AppSizes.sm,
          right: AppSizes.sm,
          left: AppSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? AppColors.white.withAlpha(127)
                    : AppColors.dark.withAlpha(127),
                backgroundColor: Colors.grey.withAlpha(51),
                side: BorderSide(
                  color: Colors.grey.withAlpha(25),
                ),
              ),
              child: Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
