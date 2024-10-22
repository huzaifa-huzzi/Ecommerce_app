import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';


class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Container(
      padding: const EdgeInsets.all(Sizes.md), // Adjust your padding here
      decoration: BoxDecoration(
        color: themeController.isDarkTheme.value ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(10), // Adjust border-radius if needed
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // Changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              // 1 - Icon
              Icon(
                Iconsax.ship, // Adjust your icon here
                color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
              ),
              const  SizedBox(width: Sizes.spaceBtwItems / 2),

              /// 2 - Status & Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Status Text
                    Text(
                      'Processing',
                      style: Theme.of(context).textTheme.bodyLarge?.apply(
                          color: themeController.isDarkTheme.value
                              ? Colors.lightBlue
                              : Colors.blue,
                          fontWeightDelta: 2),
                    ),

                    // Date Text
                    Text(
                      '07 Nov 2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              const Spacer(), // Push the icon to the end
            ],
          ),
              Row(
                children: [
                  Row(
                    children: [
                      // 1 - Icon
                      Icon(
                        Iconsax.ship, // Adjust your icon here
                        color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                      ),
                      const  SizedBox(width: Sizes.spaceBtwItems / 2),

                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Status Text
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium?.apply(
                                  color: themeController.isDarkTheme.value
                                      ? Colors.lightBlue
                                      : Colors.blue,
                                  fontWeightDelta: 2),
                            ),

                            // Date Text
                            Text(
                              '[#256f2]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
            ],
          ),
          /// 3 - Arrow Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.arrow_right_3),
            iconSize: Sizes.iconSm,
            color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
          ),
        ],
      )
    );
  }
}
