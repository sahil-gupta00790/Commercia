import 'package:commercia/features/app/screens/home/home.dart';
import 'package:commercia/features/app/screens/store/store.dart';
import 'package:commercia/features/app/screens/wishlist/wishlist.dart';
import 'package:commercia/features/personalization/screens/settings/settings.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final darkMode=AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height:80,
          elevation: 1,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value=index,
          backgroundColor: darkMode?AppColors.black:AppColors.white,
          indicatorColor: darkMode?AppColors.white.withAlpha(26):AppColors.black.withAlpha(26),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body:Obx(()=>controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  final screens=[const HomeScreen(),const StoreScreen(),const FavouriteScreen(),const SettingsScreen()];

}
