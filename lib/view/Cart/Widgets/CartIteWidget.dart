import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';


// Cart Item Widget
class CartItemWidget extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Product Image
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Sizes.sm),
          decoration: BoxDecoration(
            color: themeController.isDarkTheme.value
                ? Colors.grey.shade800
                : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.network(
            'https://via.placeholder.com/150',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),

        // Product Details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Block Sports Shoes',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Color Green Size UK 08',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 4),
              Text(
                '\$256.00',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),

        // Quantity Control
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_circle, color: Colors.grey),
            ),
            const Text(
              '2',
              style: TextStyle(fontSize: 16),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle, color: Colors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
