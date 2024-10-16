import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
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
      appBar: const DynamicAppBar(title: 'Reviews & Ratings', subtitle: ''),
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
              Row(
                children: [
                  Text('4.8',style: Theme.of(context).textTheme.displayLarge,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
