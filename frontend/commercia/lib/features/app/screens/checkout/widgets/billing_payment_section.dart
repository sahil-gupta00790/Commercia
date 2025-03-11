import 'package:commercia/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppBillingPaymentSection extends StatelessWidget {
  const AppBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        AppSectionHeading(title: 'Payment Method',buttonTitle: 'Change',showActionsButton: true,),
        SizedBox(height: AppSizes.spaceBtwItems/2,),
        Row(
          children: [
            AppRoundedContainer(
              width: 48,
              height: 48,
              backgroundColor: dark?AppColors.light:AppColors.white,
              padding: EdgeInsets.all(AppSizes.sm),
              child: Image(image: AssetImage(AppImages.googlePay),fit: BoxFit.contain,),
              
            ),
            SizedBox(width: AppSizes.spaceBtwItems/2,),
            Text('Google Pay',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}