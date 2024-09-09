import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class BrandShocaseStoreWidget extends StatelessWidget {
  const BrandShocaseStoreWidget({
    super.key,
    required this.themeController,
    required this.images
  });

  final ThemeController themeController;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RoundedContainer(
            height: 100,
            backgroundColor: themeController.isDarkTheme.value ? AppColor.darkerGrey : AppColor.light,
            margin: const EdgeInsets.only(right: Sizes.sm),
            padding: const EdgeInsets.all(Sizes.md),
            child: Image(image: AssetImage(images as String)),


          ),
        ),
        Expanded(
          child: RoundedContainer(
            height: 100,
            backgroundColor: themeController.isDarkTheme.value ? AppColor.darkerGrey : AppColor.light,
            margin: const EdgeInsets.only(right: Sizes.sm),
            padding: const EdgeInsets.all(Sizes.md),
            child: Image(image: AssetImage(images as String)),


          ),
        ),
        Expanded(
          child: RoundedContainer(
            height: 100,
            backgroundColor: themeController.isDarkTheme.value ? AppColor.darkerGrey : AppColor.light,
            margin: const EdgeInsets.only(right: Sizes.sm),
            padding: const EdgeInsets.all(Sizes.md),
            child: Image(image: AssetImage(images as String)),


          ),
        )
      ],
    );
  }
}