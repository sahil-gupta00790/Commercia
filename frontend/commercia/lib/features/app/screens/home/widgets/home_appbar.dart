import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';


class AppHomeAppBar extends StatelessWidget {
  const AppHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColors.grey)),
          Text(AppTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: AppColors.white)),
        ],
      ),
      actions: [
        AppCartCounterWidget(onPressed: (){},iconColor: AppColors.white,)
      ],
    );
  }
}
