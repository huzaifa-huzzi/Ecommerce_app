import 'package:ecommerece_app/Resources/Components/Gridingwithwidget/GridingWithWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/GridLayoutWidget/GridLayout.dart';
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
      body: SingleChildScrollView(
        child: Padding(
            padding:  const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              SectionHeadingWidget(title: 'Brands', onPressed: (){}),
              const SizedBox(height: Sizes.spaceBtwItems,),

              /// -- Brands
               GridLayout(itemCount: 10, itemBuilder: (context,index) => SizedBox(
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
               ), )
            ],
          ),
        ),
      ),

    );
  }
}
