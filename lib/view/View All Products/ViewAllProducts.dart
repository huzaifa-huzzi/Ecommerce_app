import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';



class ViewAllProducts extends StatefulWidget {
  const ViewAllProducts({super.key});

  @override
  State<ViewAllProducts> createState() => _ViewAllProductsState();
}

class _ViewAllProductsState extends State<ViewAllProducts> {

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
            padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
             /// DropDown
              DropdownButtonFormField(
                  items: ['Name','Higher Price','Lower Prices',' Sale','Newest'].map((option) => DropdownMenuItem(value: option,child: Text(option))).toList(),
                  onChanged: (value){}
              ),
              const  SizedBox(height: Sizes.spaceBtwSections,),
              /// Products
            ],
          ),
        ),
      ),
    );
  }
}
