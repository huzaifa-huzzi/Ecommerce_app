import 'package:ecommerece_app/Resources/Components/BrandName/BrandName.dart';
import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/view/Store/Widgets/BrandShowCaseStoreWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';


class CategoryTabWidget extends StatelessWidget {
  const CategoryTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return  Padding(
      padding: EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        children: [

          /// --Brands
          RoundedContainer(
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
            child: Column(
              children: [

                /// Brand with Products counts
                const  BrandNameWithIcon(brandName: 'Nike'),

                /// Brand Top 3 Products Images
                BrandShocaseStoreWidget(themeController: themeController, images: const ['assest/banners/banner-3.png'],),
                BrandShocaseStoreWidget(themeController: themeController, images: const ['assest/banners/banner-3.png'],),
                BrandShocaseStoreWidget(themeController: themeController, images: const ['assest/banners/banner-3.png'],),
                /// Products

              ],
            ),
          )
        ],
      ),

    );
  }
}
