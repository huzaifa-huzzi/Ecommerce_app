import 'package:ecommerece_app/view/ProductDetail/Widgets/RatingIndicator.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/RatingProgressIndicator.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/UserReviewCard.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';



class ProductReview extends StatefulWidget {
  const ProductReview({super.key});

  @override
  State<ProductReview> createState() => _ProductReviewState();
}

class _ProductReviewState extends State<ProductReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       /// -- Appbar
      appBar:  AppBar(
        title: Text('Reviews & Ratings', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      /// body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text('Ratings and reveiws are verified and are from people who use the same type of devices that you use.'),
              const SizedBox( height:  Sizes.spaceBtwItems,),
               /// overall product Ratings
              const RatingProgressIndicator(),
              const SizedBox(height: Sizes.spaceBtwItems,),
              RatingBarWidget(),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: Sizes.spaceBtwItems,),

               /// User Review List
              const UserReviewCard(),
              const SizedBox(height: Sizes.spaceBtwItems,),
              const UserReviewCard(),
              const SizedBox(height: Sizes.spaceBtwItems,),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
