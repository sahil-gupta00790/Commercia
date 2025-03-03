import 'package:carousel_slider/carousel_slider.dart';
import 'package:commercia/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:commercia/common/widgets/images/app_rounded_image.dart';
import 'package:commercia/features/app/controller/home_controller.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPromoSlider extends StatelessWidget {
  const AppPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final HomeController controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(

          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updateIndicator(index),
          ),
          items: banners.map((e) => const AppRoundedImage(imageUrl:AppImages.banner1)).toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems,),
        Obx(
          ()=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i=0;i<banners.length;i++)
              AppCircularContainer(
                width: 20,
                height: 4,
                backgroundColor: controller.carousalCurrentIndex.value==i?AppColors.primary:AppColors.grey,
                margin: EdgeInsets.only(right: 10),
              )
              
            ],
          ),
        )
      ],
    );
  }
}
