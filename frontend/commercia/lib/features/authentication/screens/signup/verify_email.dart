import 'package:commercia/common/widgets/success_screen/success_screen.dart';
import 'package:commercia/features/authentication/screens/login/login.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/constants/text_strings.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(AppImages.deliveredEmailIllustration),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              Text(
                AppTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                'something@something.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: AppImages.staticSuccessIllustration,
                          title: AppTexts.yourAccountCreatedTitle,
                          subtitle: AppTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(AppTexts.tContinue)),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(AppTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
