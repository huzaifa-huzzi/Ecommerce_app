import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/searchBAr/HomeSearchBAr.dart';
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
    // Determine background color based on theme
    final backgroundColor = themeController.isDarkTheme.value ? Colors.black : Colors.white;
    final appBarTextColor = themeController.isDarkTheme.value ? Colors.white : Colors.black;

    return Scaffold(
      appBar:  DynamicAppBar(
          title: 'Store',
          subtitle: '',
          cartItemCount: 5,
          color: appBarTextColor,
        ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: backgroundColor,
            elevation: 0,
            expandedHeight: 400, // Adjust based on content
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: backgroundColor,
                padding: const EdgeInsets.all(Sizes.defaultSpace), // Add padding here
                child: ListView(
                  padding: EdgeInsets.zero, // Remove extra padding
                  children: [
                    HomeSearchBar(text: 'Search in Store',),
                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Featured Brands',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: appBarTextColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: TextStyle(color: appBarTextColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Container with a fixed height for GridView
                    Container(
                      height: 300, // Adjust the height to fit your design
                      child: GridView.builder(
                        padding: EdgeInsets.zero, // Remove extra padding
                        itemCount: 4, // Adjust based on your actual data
                        shrinkWrap: true, // Important to prevent overflow
                        physics: const NeverScrollableScrollPhysics(), // Disable internal scrolling
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
              ),
            ),
          ),
        ],
        body: Container(
          padding: const EdgeInsets.all(Sizes.defaultSpace), // Add padding to body
          child: ListView(
            children: [
              // You can add more widgets here if needed
            ],
          ),
        ),
      ),
    );
  }
}
