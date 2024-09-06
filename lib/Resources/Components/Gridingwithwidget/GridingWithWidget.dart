import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Sizes.dart';
import '../../../utils/enum/enum.dart';
import '../../../view_model/Controller/ThemeController/ThemeController.dart';

class GridingWithWidget extends StatelessWidget {
  const GridingWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(Sizes.sm),
        decoration: BoxDecoration(
          color:themeController.isDarkTheme.value ? AppColor.darkerGrey
              : Colors.white,
          borderRadius: BorderRadius.circular(8), // Use borderRadius if needed
          boxShadow: [
            BoxShadow(
              color: themeController.isDarkTheme.value ? AppColor.darkerGrey
            : Colors.white,
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            /// -- Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: themeController.isDarkTheme.value ? AppColor.black : Colors.white,
                borderRadius: BorderRadius.circular(28),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  themeController.isDarkTheme.value ? 'assets/logos/dark_nike.png' :
                  'assets/logos/nike_logo.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(color: Colors.red); // Show red background if image fails to load
                  },
                ),
              ),
            ),

            const SizedBox(width: Sizes.spaceBtwItems / 2),
            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  Text(
                    'Nike',
                    style: TextStyle(
                      fontSize: 18, // Replace with TextSize.large if applicable
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium, // Use appropriate text style
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
