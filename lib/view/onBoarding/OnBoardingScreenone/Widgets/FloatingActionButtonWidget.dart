

import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/view_model/Controller/onBoardingController/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/Devics/DeviceUtils.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = Get.put(OnBoardingController());
    return Positioned(
      right: Sizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationHeight(),
      child: Builder(
        builder: (context) {
          // Determine the current theme brightness
          final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

          // Set the button background color based on the current theme
          final Color buttonColor = isDarkMode ? AppColor.primary: Colors.black;

          return ElevatedButton(
            onPressed: () {
              controller.nextPage();
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: buttonColor,
            ),
            child: const Icon(Iconsax.arrow_right_3),
          );
        },
      ),
    );

  }
}
