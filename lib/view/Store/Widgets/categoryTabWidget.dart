import 'package:ecommerece_app/Resources/Components/BrandName/BrandName.dart';
import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/Product%20Card/Product_card_vertical.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/view/Store/Widgets/BrandShowCaseStoreWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';


class CategoryTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    bool isDarkTheme = themeController.isDarkTheme.value;

    return ListView(
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      children: [
        // Brand Showcase Row
        Container(
          padding: const EdgeInsets.all(Sizes.sm),
          decoration: BoxDecoration(
            color: isDarkTheme ? Colors.black : Colors.white, // Background color based on theme
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isDarkTheme ? Colors.white : Colors.grey.shade800, // Border color based on theme
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: isDarkTheme ? Colors.black.withOpacity(0.5) : Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2), // Changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              /// -- Icon
              Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(Sizes.sm),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Maintain shape of the logo
                  child: Image.asset(
                    isDarkTheme ? 'assets/logos/dark_nike.png' : 'assets/logos/nike-3.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(color: Colors.red);
                    },
                  ),
                ),
              ),

              const SizedBox(width: Sizes.spaceBtwItems / 2),
              /// -- Text
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BrandNameWithIcon(brandName: 'Nike'),
                    Text(
                      '256 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child:  BrandShocaseStoreWidget(
                    themeController: themeController,
                    images: [
                      'assets/images/product1.png',
                      'assets/images/product2.png',
                      'assets/images/product3.png',
                    ],
                    productCount: 26,


                  ),
              ),
            ],
          ),
        ),


        const SizedBox(height: Sizes.spaceBtwSections),
        // Section Heading
        SectionHeadingWidget(title: 'You might like', onPressed: () {}),
        const SizedBox(height: Sizes.spaceBtwItems),
        // Product Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(), // Grid won't scroll, let ListView handle it
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: Sizes.gridViewSpacing,
            crossAxisSpacing: Sizes.gridViewSpacing,
            mainAxisExtent: 300, // Control the height of each grid item
          ),
          itemBuilder: (context, index) {
            return ProductCardVertical(); // Placeholder for your actual product card widget
          },
        ),
      ],
    );
  }
}

