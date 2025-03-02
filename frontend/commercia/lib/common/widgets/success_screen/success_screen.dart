import 'package:commercia/common/styles/spacing_styles.dart';

import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/constants/text_strings.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image,title,subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              
              Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
               SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child: const Text(AppTexts.tContinue)),),
            ],
          ),
        ),
      ),
    );
  }
}
