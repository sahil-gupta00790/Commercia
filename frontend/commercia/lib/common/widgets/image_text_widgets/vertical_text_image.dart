import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class AppVertialImageText extends StatelessWidget {
  const AppVertialImageText({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor,
    this.textColor=AppColors.white,
    this.onTap,
  });
  final String image, title;
  final Color? backgroundColor;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor??(dark?AppColors.black:AppColors.white),
                  borderRadius: BorderRadius.circular(400)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark?AppColors.light:AppColors.dark,
                ),
              ),
            ),
            //text
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}
