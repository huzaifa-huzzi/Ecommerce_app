import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/sizes.dart';

class VerticalImageWidget extends StatelessWidget {
  const VerticalImageWidget({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColor.textWhite,
    this.backgroundColor,
    required this.onPressed,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (themeController.isDarkTheme.value ? AppColor.dark : AppColor.light),
                borderRadius: BorderRadiusDirectional.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: themeController.isDarkTheme.value ? AppColor.light : AppColor.dark,
                ),
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
