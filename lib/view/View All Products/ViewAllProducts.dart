import 'package:ecommerece_app/Resources/Product%20Card/Product_card_vertical.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/Sizes.dart';



class ViewAllProducts extends StatelessWidget {
  ViewAllProducts({super.key});

  final ThemeController themeController = Get.find();

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
              ? Colors.white
              : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.spaceBtwItems),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                items: ['Name', 'Higher Price', 'Lower Prices', 'Sale', 'Newest']
                    .map((option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: Sizes.spaceBtwSections),
              GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics:const  NeverScrollableScrollPhysics(),
                  gridDelegate:const
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: Sizes.gridViewSpacing,crossAxisSpacing: Sizes.gridViewSpacing,mainAxisExtent: 288), itemBuilder: (_,index){
                return const  ProductCardVertical();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
