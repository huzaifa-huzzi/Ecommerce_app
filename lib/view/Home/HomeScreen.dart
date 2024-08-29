import 'package:ecommerece_app/Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Appbar and Custom design of background
            ClipPath(
              clipper: CurvedEdges(),
              child: Container(
                color: AppColor.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
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
                      HomeAppBarWidget(),
                      /// Centering the search bar vertically in the available space
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: EdgeInsets.all(Sizes.md),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
                              border: Border.all(color: AppColor.grey),
                            ),
                            child: const Row(
                              children: [
                                Icon(Iconsax.search_normal, color: AppColor.darkerGrey),
                                SizedBox(width: Sizes.defaultSpace),
                                Text(
                                  "Search in store",
                                  style: TextStyle(color: AppColor.darkerGrey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
