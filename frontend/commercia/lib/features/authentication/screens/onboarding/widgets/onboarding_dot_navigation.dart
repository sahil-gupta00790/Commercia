import 'package:commercia/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/device/device_utility.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    final controller=OnBoardingController.instance;
    return Positioned(
        bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: AppSizes.defaultSpace,
        child:
            SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: dark?AppColors.light:AppColors.dark,dotHeight: 6),));
  }
}