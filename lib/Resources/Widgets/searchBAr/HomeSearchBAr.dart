import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';


class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key, required this.text, this.icon,  this.showBackground = true,  this.showBorder = true,
  });

   final String text;
   final IconData? icon;
   final bool showBackground,showBorder;



  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Positioned(
      top: 130,
      left: 0,
      right: 0,
      child: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.15,
          padding:const  EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
            color:showBackground ? themeController.isDarkTheme.value ? AppColor.dark  : AppColor.light : Colors.transparent,
            borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
            border:showBorder? Border.all(color: AppColor.grey)  : null,
          ),
          child: const Row(
            children: [
              Icon(Iconsax.search_normal, color: AppColor.darkerGrey),
              SizedBox(width: Sizes.defaultSpace),
              Text(
                "Search in store",
                style: TextStyle(color: AppColor.darkerGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}