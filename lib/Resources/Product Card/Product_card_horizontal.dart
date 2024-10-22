import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Container(
      width: 310,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(16.0),
        color: themeController.isDarkTheme.value
            ? AppColor.darkerGrey
            : Colors.white,
      ),
      child: Row(
        children: [
           /// Thumnail

        ],
      ),
    );
  }
}
