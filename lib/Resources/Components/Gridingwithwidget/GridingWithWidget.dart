import 'package:ecommerece_app/Resources/Components/BrandName/BrandName.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Sizes.dart';
import '../../../utils/enum/enum.dart';
import '../../../view_model/Controller/ThemeController/ThemeController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Sizes.dart';
import '../../../view_model/Controller/ThemeController/ThemeController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Sizes.dart';
import '../../../view_model/Controller/ThemeController/ThemeController.dart';

class GridingWithWidget extends StatelessWidget {
  const GridingWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    bool isDarkTheme = themeController.isDarkTheme.value;

    return GestureDetector(
      onTap: () {},
      child: Container(
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
                  isDarkTheme ? 'assets/logos/dark_nike.png' : 'assets/logos/nike_logo.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(color: Colors.red); // Show red background if image fails to load
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
                    style: Theme.of(context).textTheme.bodyMedium, // Use appropriate text style
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
