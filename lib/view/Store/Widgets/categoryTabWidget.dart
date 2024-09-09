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

    return ListView(
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      children: [
        // Brand Showcase Row
        BrandShocaseStoreWidget(
          themeController: themeController,
          images: [
            'assets/images/product1.png',
            'assets/images/product2.png',
            'assets/images/product3.png',
          ],
          productCount: 26,

          
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

