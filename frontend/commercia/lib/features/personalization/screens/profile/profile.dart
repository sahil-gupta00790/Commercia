import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/images/app_circular_image.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    AppCircularImage(
                      image: AppImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Profile Picture',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              AppSectionHeading(
                title: 'Profile Information',
                showActionsButton: false,
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              AppProfileMenu(onPressed: () {}, title: 'Name', value: 'Name'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

// Heading Personal Info
              const AppSectionHeading(
                  title: 'Personal Information', showActionsButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              AppProfileMenu(
                  title: 'User ID',
                  value: '45689',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              AppProfileMenu(
                  title: 'E-mail',
                  value: 'something@something.com',
                  onPressed: () {}),
              AppProfileMenu(
                  title: 'Phone Number',
                  value: '+91-7702688831',
                  onPressed: () {}),
              AppProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              AppProfileMenu(
                  title: 'Date of Birth',
                  value: '10 Oct, 1994',
                  onPressed: () {}),
              const Divider(),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
