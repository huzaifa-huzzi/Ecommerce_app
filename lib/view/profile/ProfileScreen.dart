import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/profile/widget/ProfileAppBarScreen.dart';
import 'package:ecommerece_app/view/wishlist/Widgets/WishListAppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CurvedEdges(), // Custom clipper for curved design
        child: Container(
          color: AppColor.primary, // Blue color area
          child: SizedBox(
            height: 220, // Adjust height as needed
            child: Stack(
              children: [
                // Background circular containers
                Positioned(
                  top: -150,
                  right: -230,
                  child: CircularContainer(
                    backgroundColor: AppColor.textWhite.withOpacity(0.1),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: -310,
                  child: CircularContainer(
                    backgroundColor: AppColor.textWhite.withOpacity(0.1),
                  ),
                ),

                /// positioned inside the blue area
              const  ProfileAppBarWidgetSetInProfile(),
                  Positioned(
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
                          trailing: IconButton(onPressed: (){}, icon:const  Icon(Iconsax.edit,color: Colors.white,)),
                        ),
                        SizedBox(height: Sizes.spaceBtwSections,)

                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileAppBarWidgetSetInProfile extends StatelessWidget {
  const ProfileAppBarWidgetSetInProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Positioned(
       top: 20,
       left: 20,
       right: 20,
       child: const ProfileAppBarScreenWidget(title: 'Account', subtitle: '')
     );
  }
}

