import 'package:commercia/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:commercia/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:commercia/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:commercia/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:commercia/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:commercia/utilities/constants/image_strings.dart';

import 'package:commercia/utilities/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subtitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subtitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subtitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigation(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}


