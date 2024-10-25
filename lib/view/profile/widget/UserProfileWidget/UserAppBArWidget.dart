import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserappBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;

  const UserappBarWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
