import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/features/personalization/screens/address/add_new_address.dart';
import 'package:commercia/features/personalization/screens/address/widgets/single_address.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:AppColors.primary,
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child:Icon(Iconsax.add,color: AppColors.white,)
      ),
      appBar: AppAppBar(
        showBackArrow: true,
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(AppSizes.defaultSpace),child: Column(
          children: [
            AppSingleAddress(selectedAddress: true,)
          ],
        ),),
      ),


      
    );
  }
}
