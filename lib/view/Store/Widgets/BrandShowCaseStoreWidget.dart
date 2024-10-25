import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class BrandShocaseStoreWidget extends StatelessWidget {
  const BrandShocaseStoreWidget({
    super.key,
    required this.themeController,
    required this.images,
    required this.productCount,
  });

  final ThemeController themeController;
  final List<String> images;
  // Using the already created component
  final int productCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      decoration: BoxDecoration(
        color: themeController.isDarkTheme.value ? AppColor.darkerGrey : AppColor.light,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Brand name with icon row (using the provided component)
          const GridingWithWidget(), // Directly using the existing component
          const SizedBox(height: Sizes.defaultSpace),

          // Product count
          Text(
            '$productCount products',
            style: TextStyle(
              fontSize: 14,
              color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
            ),
          ),
          const SizedBox(height: Sizes.defaultSpace),

          // Row for product images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: images.map((image) {
              return Expanded(
                child: Container(
                  height: 80,  // Adjust the height as needed
                  margin: const EdgeInsets.only(right: Sizes.sm),
                  decoration: BoxDecoration(
                    color: themeController.isDarkTheme.value ? AppColor.darkGrey : AppColor.lightGrey,
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
