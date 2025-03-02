import 'package:commercia/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: AppDeviceUtils.getAppBarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(onPressed:()=> OnBoardingController.instance.skipPage(), child: const Text('Skip')));
  }
}
