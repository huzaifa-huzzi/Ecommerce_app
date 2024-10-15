import 'package:ecommerece_app/Resources/Components/choiceChip/ChoiceChip.dart';
import 'package:ecommerece_app/Resources/ProductPrice/ProductPriceText.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/text/ProductTitleText.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/BottomAddToCart.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/constants/Sizes.dart';

class ProductDetailAttributes extends StatelessWidget {
  const ProductDetailAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return  Column(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeadingWidget(title: 'Colors', onPressed: (){},showActionButton: false,),
              const  SizedBox(height: Sizes.spaceBtwItems / 2,),
              Wrap(
                spacing: 8,
                children: [
                  CustomChoiceChip(text: 'Green', selected: true,onSelected: (value){}),
                  CustomChoiceChip(text: 'Blue', selected: false,onSelected: (value){} ),
                  CustomChoiceChip(text: 'Yellow', selected: false,onSelected: (value){} ),
                  CustomChoiceChip(text: 'Green', selected: true,onSelected: (value){}),
                  CustomChoiceChip(text: 'Blue', selected: false,onSelected: (value){} ),
                  CustomChoiceChip(text: 'Yellow', selected: false,onSelected: (value){} ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeadingWidget(title: 'Size', onPressed: (){}),
              const  SizedBox(height: Sizes.spaceBtwItems / 2,),
              Wrap(
                spacing: 2,
                children: [
                  CustomChoiceChip(text: 'EU 34', selected: true,onSelected: (value){} ),
                  CustomChoiceChip(text: 'EU 36', selected: false ,onSelected: (value){}),
                  CustomChoiceChip(text: 'EU 38', selected: false,onSelected: (value){} ),
                ],
              ),

            ],
          ),
          const SizedBox(height: Sizes.spaceBtwItems,),
          /// Checkout buttons
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child:const  Text('Checkout')),),
          /// Description
          SectionHeadingWidget(title: 'Description', onPressed: (){}),
          const SizedBox(height: Sizes.spaceBtwItems,),
          const ReadMoreText(
            'This is the product description for pink nike shoes .There are more things that can be added but Nowadays they are not available',
            trimCollapsedText: 'Show more',
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: 'Less',
            moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
            lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
          ),
          /// Reviews
          const Divider(),
          const SizedBox(height: Sizes.spaceBtwItems,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionHeadingWidget(title: 'Reviews(199)', onPressed: (){},showActionButton: false,),
              IconButton(onPressed: (){}, icon:const  Icon(Iconsax.arrow_right_3,size: 18,))
            ],
          ),
          const SizedBox(height: Sizes.spaceBtwItems,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace,vertical: Sizes.defaultSpace /2),
            decoration: BoxDecoration(
              color: themeController.isDarkTheme.value ? AppColor.darkerGrey : AppColor.light,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.cardRadiusLg),
                topRight: Radius.circular(Sizes.cardRadiusLg),
              )
            ),
            child: Row(
              children: [

              ],
            ),
          )
        ],
      );
  }
}
