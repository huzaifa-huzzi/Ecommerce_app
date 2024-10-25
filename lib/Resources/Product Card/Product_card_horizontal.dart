import 'package:ecommerece_app/Resources/Components/BrandName/BrandName.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';



class ProductCardHorizontal extends StatelessWidget {
    const ProductCardHorizontal({super.key});

    @override
    Widget build(BuildContext context) {
        final themeController = Get.put(ThemeController());

        return Container(
            width: 250, // Fixed width for horizontal scrolling
            margin: const EdgeInsets.all(8.0), // Margin for spacing between items
            decoration: BoxDecoration(
                boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 10),
                    ),
                ],
                borderRadius: BorderRadius.circular(16.0),
                color: themeController.isDarkTheme.value
                    ? AppColor.darkerGrey
                    : Colors.white,
            ),
            child: Row(
                children: [
                    // Thumbnail Image Section
                    Expanded(
                        flex: 3,
                        child: Stack(
                            children: [
                                Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomLeft: Radius.circular(16.0),
                                        ),
                                        color: themeController.isDarkTheme.value
                                            ? AppColor.dark
                                            : Colors.white,
                                    ),
                                    child: Image.asset(
                                        'assets/banners/banner-3.png',
                                        width: 120,
                                        height: 120,
                                        fit: BoxFit.contain,
                                    ),
                                ),
                                // Sale Tag
                                Positioned(
                                    top: 12,
                                    left: 12,
                                    child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                            vertical: 4.0,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.yellow.withOpacity(0.8),
                                            borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: const Text(
                                            '25%',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                    ),
                                ),
                                // Favorite Icon
                                Positioned(
                                    top: 12,
                                    right: 12,
                                    child: IconButton(
                                        icon: Icon(
                                            Iconsax.heart5,
                                            color: themeController.isDarkTheme.value
                                                ? Colors.white
                                                : Colors.red,
                                        ),
                                        onPressed: () {
                                            // Handle favorite button press
                                        },
                                    ),
                                ),
                            ],
                        ),
                    ),

                    // Details Section
                    Expanded(
                        flex: 5,
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    const Text(
                                        'Nike Shoes',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8.0),
                                    const BrandNameWithIcon(brandName: 'Nike'),
                                    const SizedBox(height: 8.0),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            // Price
                                            const Text(
                                                '\$256.0',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                ),
                                            ),
                                            // Add to Cart Button
                                            Container(
                                                padding: const EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                    color: AppColor.dark,
                                                    borderRadius: BorderRadius.circular(8.0),
                                                ),
                                                child: const Icon(Iconsax.add, color: Colors.white),
                                            ),
                                        ],
                                    ),
                                ],
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}
