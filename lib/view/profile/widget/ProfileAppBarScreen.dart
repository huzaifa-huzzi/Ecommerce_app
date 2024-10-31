import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAppBarScreenWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final int cartItemCount;
  final Color? color;

  const ProfileAppBarScreenWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.cartItemCount = 0,
    this.color,

  });

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .001),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
