import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';



class UserProfileName extends StatelessWidget {
  const UserProfileName({
    super.key,
    re, required this.name, required this.title
  });
  final String name ;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(name,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)),
            Expanded(
                flex: 5,
                child: Text(title,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
            const Expanded(
                child: Icon(Iconsax.arrow_right_34,size: 18,)),

          ],
        ),
      ),
    );
  }
}