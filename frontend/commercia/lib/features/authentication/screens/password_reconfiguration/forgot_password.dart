import 'package:commercia/features/authentication/screens/password_reconfiguration/reset_password.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(
          AppSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields,
            ),
            Text(
              AppTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections + 2,
            ),
            //Textfield
            TextFormField(
              decoration: InputDecoration(
                labelText: AppTexts.email,
                prefixIcon: Icon(Iconsax.sms),
              ),
            ),
            const SizedBox(height:AppSizes.spaceBtwSections),
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=>const ResetPassword()), child: const Text(AppTexts.submit)))
          ],
        ),
      ),
    );
  }
}
