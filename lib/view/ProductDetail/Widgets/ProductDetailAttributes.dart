import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/Resources/ProductPrice/ProductPriceText.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/text/ProductTitleText.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
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
      children: [
        SizedBox(height: Sizes.spaceBtwItems,),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],  // Background color similar to your screenshot
            borderRadius: BorderRadius.circular(10),  // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2),  // Shadow position
              ),
            ],
          ),
          child: Row(
            children: [
              SectionHeadingWidget(
                title: 'Variation',
                onPressed: (){},
                showActionButton: false,
              ),
              SizedBox(width: Sizes.spaceBtwItems),
             Column(
               children: [
                 ProductTitleText(title: 'Price : ',smallSize: true,),
                 SizedBox(width: Sizes.spaceBtwItems,),
                 Row(
                   children: [
                     /// Actual PRice
                     Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                     const SizedBox(width: Sizes.spaceBtwItems,),
                     /// sale Price
                     ProductPriceText(price: '20')
                   ],
                 ),
                 Row(
                   children: [
                     ProductTitleText(title: 'Stack',smallSize: true,),
                     SizedBox(width: Sizes.spaceBtwItems,),
                     Text('In Stack',style: Theme.of(context).textTheme.titleMedium,)
                   ],
                 ),
                 /// Variation description
                 ProductTitleText(title: 'This is the Description of the product and it cn go puto max 4 lines',
                 smallSize: true,
                   maxLines: 4,
                 )
               ],
             ),

            ],
          ),
        ),
        /// Attributes

      ],
    );
  }
}
