import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/Sizes.dart';
import '../../../view_model/Controller/ThemeController/ThemeController.dart';

class GridingWithWidget extends StatelessWidget {
  const GridingWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    bool isDarkTheme = themeController.isDarkTheme.value;

    // Get screen dimensions for responsive layout
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: screenWidth * 0.42, // Adjust width dynamically based on screen size
        padding: EdgeInsets.all(screenWidth * 0.03), // Dynamically adjust padding
        decoration: BoxDecoration(
          color: isDarkTheme ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isDarkTheme ? Colors.white : Colors.grey.shade800,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: isDarkTheme ? Colors.black.withOpacity(0.5) : Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            /// -- Icon with adjusted size
            Container(
              width: screenWidth * 0.13, // Dynamically adjust size of image
              height: screenWidth * 0.13,
              padding: EdgeInsets.all(screenWidth * 0.01),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8), // Keep the image rounded
                child: Image.asset(
                  isDarkTheme ? 'assets/logos/dark_nike.png' : 'assets/logos/nike-3.png',
                  fit: BoxFit.contain,  // Use contain to ensure the image fits within the container
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.error,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(width: Sizes.spaceBtwItems / 3), // Adjust space between image and text

            /// -- Text Section with Icon
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Icon to appear next to the brand name

                      const SizedBox(width: Sizes.spaceBtwItems / 3), // Space between icon and text

                      // Brand Name with responsive font size
                      Text(
                        'Nike',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.045, // Responsive font size
                        ),
                        overflow: TextOverflow.ellipsis, // Handle long text
                      ),
                      const SizedBox(width: Sizes.spaceBtwItems / 3),
                      Icon(
                        Iconsax.verify5,  // Replace with any icon you need
                        color: isDarkTheme ? AppColor.primary : AppColor.primary,
                        size: screenWidth * 0.05, // Dynamically adjust icon size
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.005), // Adjust spacing

                  // Products text with responsive font size
                  Text(
                    '256 Products',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04, // Slightly smaller font size
                      color: isDarkTheme ? Colors.white70 : Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
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
