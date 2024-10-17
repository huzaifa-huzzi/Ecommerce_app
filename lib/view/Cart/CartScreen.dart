import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants/sizes.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Accessing ThemeController using GetX
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        // Change the back button color based on the theme
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white // Back button color for dark theme
              : Colors.black, // Back button color for light theme
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(height: Sizes.spaceBtwSections),
            itemCount: 4, // Example item count
            itemBuilder: (_, index) => Column(
              children: [
                Row(
                  children: [
                    // Custom Image Container
                    Container(
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(Sizes.sm), // Padding inside the container
                      decoration: BoxDecoration(
                        // Using themeController.isDarkTheme.value to set background color
                        color: themeController.isDarkTheme.value
                            ? Colors.grey.shade800 // Dark mode color
                            : Colors.grey.shade200, // Light mode color
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Image.network(
                        'https://via.placeholder.com/150', // Replace with actual image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: Sizes.spaceBtwItems), // Spacing between image and content

                    // Add other content here (like product details, etc.)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Name',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '\$99.99',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
