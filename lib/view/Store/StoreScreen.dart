import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/searchBAr/HomeSearchBAr.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/Store/Widgets/TabBarWidgets.dart';
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

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar:  DynamicAppBar(
            title: 'Store',
            subtitle: '',
            cartItemCount: 5,
            color:  themeController.isDarkTheme.value ? Colors.white : Colors.black,
          ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: backgroundColor,
              elevation: 0,
              expandedHeight: 400,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: backgroundColor,
                  padding: const EdgeInsets.all(Sizes.defaultSpace),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                     const  HomeSearchBar(text: 'Search in Store',),
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
      
                      Container(
                        height: 300,
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
                            return GridingWithWidget();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               /// Tabs
              bottom:  TabBarStoreWidget(themeController: themeController,
                  tabs:const [
                    Tab(child: Text('Sports'),),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics'),),
                    Tab(child: Text('Clothes'),),
                    Tab(child: Text('Cosmetics'),)

              ])
            ),
          ],
          body: Container(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: ListView(
              children: [
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}

