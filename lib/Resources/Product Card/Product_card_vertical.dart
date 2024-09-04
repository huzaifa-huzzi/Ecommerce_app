import 'package:ecommerece_app/Resources/Components/FavouriteIcon/FavouriteIcon.dart';
import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/shadow/ShadowStyle.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: themeController.isDarkTheme.value ? AppColor.darkerGrey : Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Thumbnail, Wishlist, Discount tag
          RoundedContainer(
            height: 180,
            padding: EdgeInsets.all(Sizes.sm),
            backgroundColor: themeController.isDarkTheme.value ? AppColor.dark : AppColor.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
              Container(
              width: 180,
              height: 200,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/banners/banner-1.png', // Make sure this path is correct
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.broken_image,
                    size: 50,
                    color: Colors.grey,
                  ); // Display an error icon if the image fails to load
                },
              ),
            ),

                /// -- Sale Tag
                Positioned(
                  top: 12,
                  left: 12,
                  child: RoundedContainer(
                    radius: Sizes.sm,
                    backgroundColor: AppColor.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColor.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon
                Positioned(
                  top: 12,
                  right: 12,
                  child: FavuriteIconButton(
                    themeController: themeController,
                    icon: Iconsax.heart5,
                  ),
                ),
              ],
            ),
          ),

          /// Product Details (if any) can be added here.
        ],
      ),
    );
  }
}
