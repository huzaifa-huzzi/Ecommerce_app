import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Container(
      width: 180,
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
            ? Colors.grey[800]
            : Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Thumbnail, Wishlist, Discount tag
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: themeController.isDarkTheme.value
                  ? Colors.grey[700]
                  : Colors.grey[200],
            ),
            child: Stack(
              children: [
                /// Thumbnail Image
                Align(
                  alignment: Alignment.center, // Centers the image within the container
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0), // Adjust padding to position the image vertically
                    child: Image.asset(
                      'assets/banners/banner-3.png', // Ensure this path is correct
                      width: 150,
                      height: 120,
                      fit: BoxFit.contain, // Ensures the image maintains its aspect ratio
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(Icons.error, color: Colors.red),
                        );
                      },
                    ),
                  ),
                ),

                /// Sale Tag
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

                /// Favourite Icon
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
                      // Handle the favourite button press
                    },
                  ),
                ),
              ],
            ),
          ),
          // You can add more details below the image as needed
        ],
      ),
    );
  }
}
