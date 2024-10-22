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

    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(Sizes.md),
        itemCount: 5, // We are displaying 5 items in the list
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(Sizes.md),
            decoration: BoxDecoration(
              color: themeController.isDarkTheme.value
                  ? Colors.black
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1 - Processing status and date row
                Row(
                  children: [
                    Icon(
                      Iconsax.ship, // Adjust your icon here
                      color: themeController.isDarkTheme.value
                          ? Colors.white
                          : Colors.black,
                    ),
                    const SizedBox(width: Sizes.spaceBtwItems / 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.apply(
                              color: themeController.isDarkTheme.value
                                  ? Colors.lightBlue
                                  : Colors.blue,
                              fontWeightDelta: 2),
                        ),
                        Text(
                          '07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Iconsax.arrow_right_3, // Adjust your icon here
                      color: themeController.isDarkTheme.value
                          ? Colors.white
                          : Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwItems * 2),

                // 2 - Order details and Shipping date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Order Number
                    Row(
                      children: [
                        Icon(
                          Iconsax.location, // Adjust your icon here
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        const SizedBox(width: Sizes.spaceBtwItems / 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.apply(
                                  color: themeController.isDarkTheme.value
                                      ? Colors.grey
                                      : Colors.grey),
                            ),
                            Text(
                              '[#256612]',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: Sizes.spaceBtwItems),

                    // Shipping Date
                    Row(
                      children: [
                        Icon(
                          Iconsax.clock, // Adjust your icon here
                          color: themeController.isDarkTheme.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        const SizedBox(width: Sizes.spaceBtwItems / 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.apply(
                                  color: themeController.isDarkTheme.value
                                      ? Colors.grey
                                      : Colors.grey),
                            ),
                            Text(
                              '03 Feb 2025',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
