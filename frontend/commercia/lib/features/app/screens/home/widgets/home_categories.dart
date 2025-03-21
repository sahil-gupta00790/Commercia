
import 'package:commercia/common/widgets/image_text_widgets/vertical_text_image.dart';
import 'package:commercia/features/app/screens/sub_category/sub_category.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVertialImageText(image: AppImages.shoeIcon,title: 'Shoes',onTap: ()=>Get.to(()=>SubCategoriesScreen()),);
        },
      ),
    );
  }
}
