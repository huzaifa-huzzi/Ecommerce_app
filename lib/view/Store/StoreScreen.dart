import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/common widgets/searchBAr/HomeSearchBAr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_model/Controller/ThemeController/ThemeController.dart';
import '../../utils/constants/Sizes.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DynamicAppBar(
        title: 'Store',
        subtitle: 'Explore Our Collection',
        cartItemCount: 5, // Example cart item count
        color: Colors.white, // Optional color for the cart item count
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Search Bar (Replace with HomeSearchBar widget)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
            child: HomeSearchBar(text: 'Search in Store'),
          ),
          const SizedBox(height: 20),

          // Section Heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Featured Brands',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('View All'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // GridView (Integrating GridingWithWidget)
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              itemCount: 4, // Adjust based on your actual data
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: Sizes.gridViewSpacing,
                crossAxisSpacing: Sizes.gridViewSpacing,
                mainAxisExtent: 100, // Adjust as needed
              ),
              itemBuilder: (context, index) {
                return GridingWithWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
