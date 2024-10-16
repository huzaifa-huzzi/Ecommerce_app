import 'package:ecommerece_app/Resources/Components/choiceChip/ChoiceChip.dart';
import 'package:ecommerece_app/Resources/ProductPrice/ProductPriceText.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/text/ProductTitleText.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/ProductDetail/ProductReview.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/constants/Sizes.dart';

class ProductDetailAttributes extends StatefulWidget {
  const ProductDetailAttributes({super.key});

  @override
  _ProductDetailAttributesState createState() => _ProductDetailAttributesState();
}

class _ProductDetailAttributesState extends State<ProductDetailAttributes> {
  String selectedColor = ''; // Store the selected color

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Sizes.spaceBtwItems),
          // Product Information Container
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: themeController.isDarkTheme.value ? AppColor.darkerGrey : Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionHeadingWidget(
                  title: 'Variation',
                  onPressed: () {},
                  showActionButton: false,
                ),
                const SizedBox(height: Sizes.spaceBtwItems),
                // Price Row
                Row(
                  children: [
                    Text(
                      'Price: ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(width: Sizes.spaceBtwItems),
                    Text(
                      '\$25',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: Sizes.spaceBtwItems),
                    const ProductPriceText(price: '20'),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwItems),
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
                const SizedBox(height: Sizes.spaceBtwItems),
                const ProductTitleText(
                  title: 'This is the Description of the product and it can go up to max 4 lines.',
                  smallSize: true,
                  maxLines: 4,
                ),
              ],
            ),
          ),
          /// Attributes Section
          const SizedBox(height: Sizes.spaceBtwItems),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeadingWidget(title: 'Colors', onPressed: () {}, showActionButton: false),
              const SizedBox(height: Sizes.spaceBtwItems / 2),
              // Circular color options with a checkmark for the selected color
              Wrap(
                spacing: 8,
                children: [
                  // Green color option (with tick mark if selected)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 'green';
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        if (selectedColor == 'green')
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 24,
                          ),
                      ],
                    ),
                  ),
                  // Blue color option (with tick mark if selected)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 'blue';
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        if (selectedColor == 'blue')
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 24,
                          ),
                      ],
                    ),
                  ),
                  // Yellow color option (with tick mark if selected)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 'yellow';
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        if (selectedColor == 'yellow')
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 24,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              SectionHeadingWidget(title: 'Size', onPressed: () {}),
              const SizedBox(height: Sizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: [
                  CustomChoiceChip(
                    text: 'EU 34',
                    selected: true, // You can control this with state
                    onSelected: (value) {
                      setState(() {
                        // Update the selected state
                      });
                    },
                    color: Colors.blue,
                  ),
                  CustomChoiceChip(
                    text: 'EU 36',
                    selected: false,
                    onSelected: (value) {
                      setState(() {
                        // Update the selected state
                      });
                    },
                    color: Colors.blue,
                  ),
                  CustomChoiceChip(
                    text: 'EU 38',
                    selected: false,
                    onSelected: (value) {
                      setState(() {
                        // Update the selected state
                      });
                    },
                    color: Colors.blue,
                  ),
                ],
              ),

            ],
          ),

          const SizedBox(height: Sizes.spaceBtwItems),
          // Checkout Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Checkout'),
            ),
          ),
          /// Description Section
          SectionHeadingWidget(title: 'Description', onPressed: () {}),
          const SizedBox(height: Sizes.spaceBtwItems),
          const ReadMoreText(
            'This is the product description for pink nike shoes. There are more things that can be added but Nowadays they are not available',
            trimCollapsedText: 'Show more',
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: 'Less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          ),
          // Reviews Section
          const Divider(),
          const SizedBox(height: Sizes.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionHeadingWidget(title: 'Reviews(199)', onPressed: (){}, showActionButton: false),
              IconButton(
                onPressed:  () => Get.to(() =>const  ProductReview()),
                icon: const Icon(Iconsax.arrow_right_3, size: 18),
              ),
            ],
          ),
          const SizedBox(height: Sizes.spaceBtwItems),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.defaultSpace,
              vertical: Sizes.defaultSpace / 2,
            ),
            decoration: BoxDecoration(
              color: themeController.isDarkTheme.value ? AppColor.darkerGrey : AppColor.light,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(Sizes.cardRadiusLg),
                topRight: Radius.circular(Sizes.cardRadiusLg),
                bottomRight: Radius.circular(Sizes.cardRadiusLg),
                bottomLeft: Radius.circular(Sizes.cardRadiusLg),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('2'),
                    const SizedBox(width: 10),
                    // Plus Icon Button
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: Sizes.spaceBtwItems),
                    ElevatedButton(
                      onPressed: () {
                        // Add to Cart action
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                      ),
                      child: const Text(
                        'Add To Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
