import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/Resources/Components/settingMenuTile/SettingMenuTileComponent.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/Adresses/address.dart';
import 'package:ecommerece_app/view/profile/widget/ProfileAppBarWidgetSetting.dart';
import 'package:ecommerece_app/view/profile/widget/ProfileNameAndImage.dart';
import 'package:ecommerece_app/view/profile/widget/settingMenuTile.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {  // Using Obx to listen to theme changes
      return Scaffold(  // Adjust background color for dark and light themes
        body: Column(
          children: [
            ClipPath(
              clipper: CurvedEdges(), // Custom clipper for curved design
              child: Container(
                color: themeController.isDarkTheme.value
                    ? AppColor.primary
                    : AppColor.primary,  // Adjust the app bar background for themes
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

                      /// Positioned inside the blue/dark grey area
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
                      ProfileScetionHEading(
                        title: 'Account Settings',
                        onPressed: (){},
                        textColor: themeController.isDarkTheme.value
                            ? Colors.white
                            : Colors.black, // Adjust section heading color
                      ),
                      const SizedBox(height: Sizes.spaceBtwItems),
                      Container(

                        child: Column(
                          children: [
                            SettingMenuTileComponent(
                              icon: Iconsax.safe_home,
                              title: "My Addresses",
                              subtitle: "Set Shopping delivery Access",
                              trailing: const Icon(Icons.arrow_forward_ios),
                              ontap: ()  => Get.to(() =>const UserAddress()),

                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.shopping_cart,
                              title: "My Cart",
                              subtitle: "Add, Remove Products and move to checkout",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.bag_tick,
                              title: "My Orders",
                              subtitle: "In-Progress and completed orders",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.bank,
                              title: "Bank Account",
                              subtitle: "Withdraw balance to registered bank accounts",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.discount_shape,
                              title: "My Coupons",
                              subtitle: "List of all discounted coupons",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.notification,
                              title: "Notifications",
                              subtitle: "Set notification preferences",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.security_card,
                              title: "Account Privacy",
                              subtitle: "Manage your profile and preferences",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            /// -- AppSettings
                            const SizedBox(height: Sizes.spaceBtwSections,),
                            ProfileScetionHEading(
                              title: 'App Settings',
                              onPressed: (){},
                              textColor: themeController.isDarkTheme.value
                                  ? Colors.white
                                  : Colors.black, // Adjust section heading color
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.document_upload,
                              title: "Load Data",
                              subtitle: "Upload Data to your Cloud Firebase",
                              trailing: const Icon(Icons.arrow_forward_ios), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.location,
                              title: "GeoLocation",
                              subtitle: "Set Recommendation based on location",
                              trailing: Switch(
                                value: false,
                                onChanged: (value){},
                                activeColor: themeController.isDarkTheme.value
                                    ? Colors.white
                                    : AppColor.primary,  // Adjust switch color
                              ), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.security_user,
                              title: "Safe Mode",
                              subtitle: "Search results are safe for all ages",
                              trailing: Switch(
                                value: false,
                                onChanged: (value){},
                                activeColor: themeController.isDarkTheme.value
                                    ? Colors.white
                                    : AppColor.primary,  // Adjust switch color
                              ), ontap: () {  },
                            ),
                            SettingMenuTileComponent(
                              icon: Iconsax.document_upload,
                              title: "Load Data",
                              subtitle: "Upload Data to your Cloud Firebase",
                              trailing: Switch(
                                value: false,
                                onChanged: (value){},
                                activeColor: themeController.isDarkTheme.value
                                    ? Colors.white
                                    : AppColor.primary,  // Adjust switch color
                              ), ontap: () {  },
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
    });
  }
}
