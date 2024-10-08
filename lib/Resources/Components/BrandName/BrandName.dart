

import 'package:ecommerece_app/utils/enum/enum.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart'; // Assuming these are your custom constants
import 'package:ecommerece_app/utils/constants/Sizes.dart';  // Assuming this holds your sizes

class BrandNameWithIcon extends StatelessWidget {
  final String brandName;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final TextSize brandTextSize;
  final Color? color;

  const BrandNameWithIcon({
    Key? key,
    required this.brandName,
    this.icon = Iconsax.verify5,
    this.iconColor = AppColor.primary,
    this.iconSize = Sizes.iconXs,
    this.brandTextSize = TextSize.small,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            brandName,
            overflow: TextOverflow.ellipsis,
            style: brandTextSize == TextSize.small
                ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
                : brandTextSize == TextSize.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandTextSize == TextSize.large
                ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
          ),
        const SizedBox(width:Sizes.spaceBtwItems / 2), // Adjust width for spacing
        Icon(icon, color: iconColor, size: Sizes.iconSm),
      ],
    );
  }
}
