import 'package:commercia/common/widgets/texts/app_brand_title_text.dart';
import 'package:commercia/utilities/constants/enums.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const AppBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.iconColor = Colors.blue,
    this.textAlign = TextAlign.center,
    this.brandtextSize = TextSizes.small,
  });
  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandtextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AppBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLine,
            textAlign: textAlign,
            brandTextSize: brandtextSize,
          ),
        ),
        const SizedBox(
          width: AppSizes.xs,
        ),
        Icon(Iconsax.verify5, color: Colors.blue, size: AppSizes.iconXs),
      ],
    );
  }
}
