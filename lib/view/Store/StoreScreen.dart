import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import 'package:ecommerece_app/Resources/common%20widgets/searchBAr/HomeSearchBAr.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';


class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const DynamicAppBar(title: 'Store', subtitle: '',cartItemCount: 2,),
      body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor:themeController.isDarkTheme.value ? AppColor.black : Colors.white ,
            expandedHeight: 440,
            flexibleSpace: Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                children:const  [
                   /// -- SearchBAr
                    SizedBox(height: Sizes.spaceBtwItems,),
                   HomeSearchBar(text: 'Search in Store',showBackground: false,showBorder: true,),
                   SizedBox(height: Sizes.spaceBtwSections,),
                  /// --- Featured Brands

                ],
              ),
            ),
          )
        ];

      }, body: Container())
    );
  }
}
