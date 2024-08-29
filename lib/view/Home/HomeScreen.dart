import 'package:ecommerece_app/Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
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
                padding:const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top: -150,right: -230,child: CircularContainer(backgroundColor: AppColor.textWhite.withOpacity(0.1),)),
                      Positioned(top: 100,right: -310,child: CircularContainer(backgroundColor: AppColor.textWhite.withOpacity(0.1))),
                      HomeAppBarWidget(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:Sizes.defaultSpace),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * .9,
                          height: MediaQuery.sizeOf(context).width * .02,
                          padding: EdgeInsets.all(Sizes.md),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
                              border: Border.all(color: AppColor.grey)
                          ),
                        ),
                      ),
                      const  SizedBox(height:Sizes.spaceBtwItems ,),
                       /// searchBar


                    ],

                  ),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

