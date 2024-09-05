import 'package:ecommerece_app/Resources/Components/BrandName/BrandName.dart';
import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/utils/enum/enum.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Sizes.dart';


class GridingWithWidget extends StatelessWidget {
  const GridingWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return GestureDetector(
      onTap: () {},
      child: RoundedContainer(
        padding: const EdgeInsets.all(Sizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: themeController.isDarkTheme.value ? AppColor.black : Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/banners/Nike.png',
                  fit: BoxFit.cover,
                  color: themeController.isDarkTheme.value ? Colors.white : AppColor.dark,
                )
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems / 2),
            /// -- Text
             Expanded(
               child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BrandNameWithIcon(brandName: 'Nike', brandTextSize: TextSize.large),
                    Text(
                      '256 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
             ),
          ],
        ),
      ),
    );
  }
}
