import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/device/device_utility.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget implements PreferredSizeWidget {
  const Tabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
  final dark=AppHelperFunctions.isDarkMode(context);
  return Material(
    color: dark?AppColors.black:AppColors.white,
    child: TabBar(
      tabs: tabs,
      isScrollable:true,
      indicatorColor:AppColors.primary,
      labelColor: dark?AppColors.white:AppColors.primary,
      unselectedLabelColor: AppColors.darkGrey,
      ),
    
  );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}