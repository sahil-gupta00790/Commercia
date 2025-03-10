import 'package:commercia/common/widgets/appbar/appbar.dart';
import 'package:commercia/common/widgets/products/ratings/rating_indicator.dart';
import 'package:commercia/features/app/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:commercia/features/app/screens/product_reviews/widgets/user_review_card.dart';
import 'package:commercia/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Raring and reviews are verified and are from the people who us ethe same type of device you use.'),
              SizedBox(
                height: AppSizes.spaceBtwItems * 2,
              ),
              AppOverallProductRating(),
              AppRatingBarIndicator(rating: 3,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: AppSizes.spaceBtwSections,),

              //list of reviews
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              
            ],
          ),
        ),
      ),
    );
  }
}


