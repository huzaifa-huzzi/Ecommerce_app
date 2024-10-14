import 'package:ecommerece_app/Resources/Components/choiceChip/ChoiceChip.dart';
import 'package:ecommerece_app/Resources/ProductPrice/ProductPriceText.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/text/ProductTitleText.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Sizes.dart';

class ProductDetailAttributes extends StatelessWidget {
  const ProductDetailAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
      children: [
        const SizedBox(height: Sizes.spaceBtwItems),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.grey[200], // Background color similar to your screenshot
            borderRadius: BorderRadius.circular(10), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2), // Shadow position
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text and columns to start
            children: [
              SectionHeadingWidget(
                title: 'Variation',
                onPressed: () {},
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItems), // Space between rows

              // Price Row
              Row(
                children: [
                  Text(
                    'Price: ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  // Original Price
                  Text(
                    '\$25',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(decoration: TextDecoration.lineThrough),
                  ),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  // Sale Price
                  const ProductPriceText(price: '20'),
                ],
              ),
              const SizedBox(height: Sizes.spaceBtwItems), // Space between rows

              // Stock Row
              Row(
                children: [
                  Text(
                    'Stock: ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  Text(
                    'In Stock',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const SizedBox(height: Sizes.spaceBtwItems), // Space between rows

              // Product Description (limited to 4 lines)
              const ProductTitleText(
                title:
                'This is the Description of the product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        /// Attributes
        Column(
          children: [
           SectionHeadingWidget(title: 'Colors', onPressed: (){}),
            SizedBox(height: Sizes.spaceBtwItems / 2,),
            CustomChoiceChip(text: 'Green', selected: true )
          ],
        )
      ],
    );
  }
}
