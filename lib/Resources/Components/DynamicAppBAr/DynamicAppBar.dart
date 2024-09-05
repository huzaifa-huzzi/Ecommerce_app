import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DynamicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final int cartItemCount;
  final Color? color;

  const DynamicAppBar({
    Key? key,
    required this.title,
    required this.subtitle,
    this.cartItemCount = 0,
    this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .001),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.shopping_bag, color: Colors.black),
            ),
            if (cartItemCount > 0)
              Positioned(
                right: 22,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColor.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      '$cartItemCount',
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: color,
                        fontSizeFactor: 0.8,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
