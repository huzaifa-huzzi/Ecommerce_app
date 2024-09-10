import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class ProfileNameandImage extends StatelessWidget {
  const ProfileNameandImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 100,
        left: 10,
        right: 20,
        child: Column(
          children: [
            ListTile(
              leading:const  CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/background@.png'), // Provide the path to your image
              ),
              title: Text(
                'Huzaifa Khan',
                style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
              ),
              subtitle: Text(
                'support@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
              ),
              trailing: IconButton(onPressed: (){}, icon:const Icon(Iconsax.edit,color: Colors.white,)),
            ),
            const SizedBox(height: Sizes.spaceBtwSections,)

          ],
        )
    );
  }
}