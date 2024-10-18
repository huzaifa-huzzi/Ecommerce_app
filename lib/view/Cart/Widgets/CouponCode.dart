import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';



class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
    required this.themeController,
  });

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 8),
      decoration: BoxDecoration(
        color: themeController.isDarkTheme.value ? AppColor.dark : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!), // Adjust border color as needed
      ),
      child: Row(
        children: [
          /// Promo Code TextField
          Expanded(
            child: TextFormField(
              decoration:  InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: themeController.isDarkTheme.value ? Colors.white : AppColor.dark),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder:  InputBorder.none,
                  disabledBorder:  InputBorder.none
              ),
            ),
          ),
          SizedBox(width: Sizes.defaultSpace),

          /// Apply Button with rounded corners
          ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ), // Adjust button color if needed
            ),
            child: const Text('Apply'),
          ),
        ],
      ),
    );
  }
}