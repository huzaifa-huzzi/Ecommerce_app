import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/common%20widgets/searchBAr/HomeSearchBAr.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import '../../Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import '../../utils/constants/Colors.dart';
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
      appBar: DynamicAppBar(title: 'Store', subtitle: '',color: Colors.black,),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: themeController.isDarkTheme.value ? AppColor.black : Colors.white,
              expandedHeight: 440,
              flexibleSpace: Stack(
                children: [
                  const Positioned(
                    top: 55,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
                      child: HomeSearchBar(
                        text: 'Search in Store',
                        showBackground: true,
                        showBorder: true,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150, // Adjust the top position as needed
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionHeadingWidget(title: 'Featured Brands', onPressed: () {}),
                          const SizedBox(height: Sizes.spaceBtwItems / 1.5),
                          Container(
                            height: 200, // Adjust based on your design needs
                            child: GridView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: Sizes.gridViewSpacing,
                                crossAxisSpacing: Sizes.gridViewSpacing,
                                mainAxisExtent: 80,
                              ),
                              itemBuilder: (_, index) {
                                return const GridingWithWidget(); // Your grid item widget
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Container(), // Your body content goes here
      ),
    );
  }
}
