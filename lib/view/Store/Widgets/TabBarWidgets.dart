import 'package:ecommerece_app/utils/Devics/DeviceUtils.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';

class TabBarStoreWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarStoreWidget({
    super.key,
    required this.themeController,
    required this.tabs
  });

  final ThemeController themeController;
  final List<Widget> tabs ;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
          isScrollable:true,
          indicatorColor: AppColor.primary,
          unselectedLabelColor: AppColor.darkGrey,
          labelColor: themeController.isDarkTheme.value ? Colors.white : AppColor.primary,
          tabs:tabs
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
