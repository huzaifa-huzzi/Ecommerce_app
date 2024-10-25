import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/searchBAr/HomeSearchBAr.dart';
import 'package:ecommerece_app/view/Store/Widgets/TabBarWidgets.dart';
import 'package:ecommerece_app/view/Store/Widgets/categoryTabWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_model/Controller/ThemeController/ThemeController.dart';
import '../../utils/constants/Sizes.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    // Determine background color based on theme
    final backgroundColor = themeController.isDarkTheme.value
        ? Colors.black
        : Colors.white;
    final appBarTextColor = themeController.isDarkTheme.value
        ? Colors.white
        : Colors.black;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: DynamicAppBar(
          title: 'Store',
          subtitle: '',
          cartItemCount: 5,
          color: appBarTextColor,
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
          [
            SliverAppBar(
              backgroundColor: backgroundColor,
              elevation: 0,
              expandedHeight: 400,
              // Adjust this if needed
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: backgroundColor,
                  padding: const EdgeInsets.all(Sizes.defaultSpace),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      const HomeSearchBar(text: 'Search in Store'),
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
                            child: Text('View All',
                                style: TextStyle(color: appBarTextColor)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 300, // Adjust height based on design
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: Sizes.gridViewSpacing,
                            crossAxisSpacing: Sizes.gridViewSpacing,
                            mainAxisExtent: 100,
                          ),
                          itemBuilder: (context, index) {
                            return const GridingWithWidget();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(60),
                // Adjust size to add some space
                child: TabBarStoreWidget(), // This now works correctly
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              CategoryTabWidget(),
              CategoryTabWidget(),
              CategoryTabWidget(),
              CategoryTabWidget(),
              CategoryTabWidget(),
            ],
          ),
        ),
      ),
    );
  }
}