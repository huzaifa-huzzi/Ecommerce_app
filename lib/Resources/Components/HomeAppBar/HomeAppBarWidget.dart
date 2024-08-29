import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(TextSelector.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColor.grey),),
          Text(TextSelector.homeAppbarSubtitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),)
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag,color: Colors.white,)),
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
                    child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColor.textWhite,fontSizeFactor: 0.8),),
                  ),
                )
            ),
          ],
        )
      ],
    );
  }
}

