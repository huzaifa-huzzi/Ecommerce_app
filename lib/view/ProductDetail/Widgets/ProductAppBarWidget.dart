import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';



class ProductAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;
  final Color? color;

  const ProductAppBarWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.isFavorite = false,
    required this.onFavoritePressed, // Function to handle favorite icon press
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return AppBar(
      backgroundColor: themeController.isDarkTheme.value
          ? AppColor.darkerGrey
          : AppColor.light,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
        ),
        onPressed: () {
          Get.back(); // Go back when the back button is pressed
        },
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium!.apply(
              color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .001),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
      actions: [
        // Favorite Icon Button
        IconButton(
          onPressed: onFavoritePressed, // Handle favorite press
          icon: Icon(
            isFavorite ? Iconsax.heart5 : Iconsax.heart, // Dynamic favorite icon
            color: isFavorite ? Colors.red : (themeController.isDarkTheme.value ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
