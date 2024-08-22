import 'package:ecommerece_app/view_model/Controller/onBoardingController/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/Devics/DeviceUtils.dart';
import '../../../../utils/constants/sizes.dart';


class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put (OnBoardingController());
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationHeight() + 25,
      left: Sizes.defaultSpace,
      child: Builder(
        builder: (context) {
          // Determine the current theme brightness
          final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

          // Set the dot color based on the current theme
          final Color activeDotColor = isDarkMode ? Colors.white : Colors.black;

          return SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: activeDotColor,
              dotHeight: 6,
            ),
          );
        },
      ),
    );

  }
}
