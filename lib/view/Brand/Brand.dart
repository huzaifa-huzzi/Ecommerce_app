import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';

class AllBrandScreen extends StatefulWidget {
  const AllBrandScreen({super.key});

  @override
  State<AllBrandScreen> createState() => _AllBrandScreenState();
}

class _AllBrandScreenState extends State<AllBrandScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Products',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white // Back button color for dark theme
              : Colors.black, // Back button color for light theme
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section heading
            SectionHeadingWidget(
              title: 'Brands',
              onPressed: () {},
            ),
            const SizedBox(height: Sizes.spaceBtwItems),

            // Main grid layout
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10, // Adjust according to the number of brands
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: Sizes.gridViewSpacing,
                  crossAxisSpacing: Sizes.gridViewSpacing,
                  mainAxisExtent: 150, // Adjust height for each grid item
                ),
                itemBuilder: (context, index) {
                  return const GridingWithWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
