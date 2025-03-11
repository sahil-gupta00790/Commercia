import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:commercia/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:commercia/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:commercia/common/widgets/texts/section_heading.dart';
import 'package:commercia/features/app/screens/order/order.dart';
import 'package:commercia/features/personalization/screens/address/address.dart';
import 'package:commercia/features/personalization/screens/profile/profile.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  AppAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  AppUserProfileTile(onPressed:()=>Get.to((()=>ProfileScreen()))),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections * 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  AppSectionHeading(
                    title: 'Account settings',
                    showActionsButton: false,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  AppSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()=>UserAddressScreen()),
                  ),
                  AppSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout'),
                  AppSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-progress and Completed Orders',
                      onTap:()=>Get.to(()=>OrderScreen()),),
                  AppSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account'),
                  AppSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons'),
                  AppSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notification message'),
                  AppSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts'),
// -- App Settings
                  SizedBox(height: AppSizes.spaceBtwSections),
                  AppSectionHeading(
                      title: 'App Settings', showActionsButton: false),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  AppSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload Data to Cloud'),
                  AppSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  AppSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  AppSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections * 2,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections * 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
