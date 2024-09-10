import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/Resources/Components/settingMenuTile/SettingMenuTileComponent.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/profile/widget/ProfileAppBarWidgetSetting.dart';
import 'package:ecommerece_app/view/profile/widget/ProfileNameAndImage.dart';
import 'package:ecommerece_app/view/profile/widget/settingMenuTile.dart';
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
      body: Column(
        children: [
          ClipPath(
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

                    /// Positioned inside the blue area
                    const ProfileAppBarWidgetSetInProfile(),
                    const ProfileNameandImage(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// -- Account Settings
                    ProfileScetionHEading(title: 'Account Settings', onPressed: (){}),
                    const SizedBox(height: Sizes.spaceBtwItems),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SettingMenuTileComponent(
                            icon: Iconsax.safe_home,
                            title: "My Addresses",
                            subtitle: "Set Shopping delivery Acces",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          const SettingMenuTileComponent(
                            icon: Iconsax.shopping_cart,
                            title: "My Cart",
                            subtitle: "Add,Remove Products and move to checkout",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          const SettingMenuTileComponent(
                            icon: Iconsax.bag_tick,
                            title: "My Orders",
                            subtitle: "In-Progress and complete orders",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          const SettingMenuTileComponent(
                            icon: Iconsax.bank,
                            title: "BAnk Account",
                            subtitle: "Withdraw balance to registered bank accounts",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          const SettingMenuTileComponent(
                            icon: Iconsax.discount_shape,
                            title: "My Coupons",
                            subtitle: "List of all discounted coupons",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          const SettingMenuTileComponent(
                            icon: Iconsax.notification,
                            title: "Notifications",
                            subtitle: "Set any kind of notifications mesage",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          const SettingMenuTileComponent(
                            icon: Iconsax.security_card,
                            title: "Account Privacy",
                            subtitle: "Manage your profile and preferences",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                           /// -- AppSettings
                          const SizedBox(height: Sizes.spaceBtwSections,),
                          ProfileScetionHEading(title: 'App Settings', onPressed: (){}),
                          const SettingMenuTileComponent(
                            icon: Iconsax.document_upload,
                            title: "Load Data",
                            subtitle: "Upload Data to your Cloud Firebase",
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                           SettingMenuTileComponent(
                            icon: Iconsax.location,
                            title: "GeoLocation",
                            subtitle: "SetRecommendation based on location",
                            trailing: Switch(value: false, onChanged: (value){}),
                          ),
                          SettingMenuTileComponent(
                            icon: Iconsax.security_user,
                            title: "safe Mode",
                            subtitle: "search result is safe for all ages",
                            trailing: Switch(value: false, onChanged: (value){}),
                          ),
                           SettingMenuTileComponent(
                            icon: Iconsax.document_upload,
                            title: "Load Data",
                            subtitle: "Upload Data to your Cloud Firebase",
                            trailing:Switch(value: false, onChanged: (value){}),
                          ),

                          // Add more SettingMenuTileComponent instances as needed
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
