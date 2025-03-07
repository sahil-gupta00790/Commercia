import 'package:commercia/common/widgets/images/app_circular_image.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({
    super.key, this.onPressed,
    
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppCircularImage(image: AppImages.user,width: 50,height: 50,padding: 0,),
      title: Text('Hello, [User\'s Name]! Ready to shop?',style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),),
      subtitle:Text('Discover exclusive deals and your favorite brands',style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),) ,
      trailing: IconButton(onPressed: onPressed,icon: Icon(Iconsax.edit,color: AppColors.white,),),
    
    );
  }
}
