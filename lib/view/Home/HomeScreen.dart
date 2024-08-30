import 'package:ecommerece_app/Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/Resources/Widgets/searchBAr/HomeSearchBAr.dart';
import 'package:ecommerece_app/Resources/Widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

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
                     const  HomeAppBarWidget(),

                      /// Positioning the search bar below the AppBar
                      const HomeSearchBar(text: 'Search in store'),
                      const SizedBox(height: Sizes.spaceBtwSections,),
                      /// Categories
                      Padding(
                          padding:const  EdgeInsets.only(left: Sizes.defaultSpace),
                        child: Column(
                          children: [
                            SectionHeadingWidget(title: 'Popular Categories', onPressed: (){},showActionButton: false,),
                            const SizedBox(height: Sizes.spaceBtwItems,),
                            ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                               return Column(
                                 children: [
                                   Container(
                                     width: 56,
                                     height: 56,
                                     padding: EdgeInsets.all(Sizes.sm),
                                     decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadiusDirectional.circular(100)
                                     ),
                                     child:const  Center(
                                       child: Image(image: AssetImage(''),fit: BoxFit.cover,color: AppColor.dark,),
                                     ),
                                   ),
                                   const SizedBox(height: Sizes.spaceBtwItems /2,),

                                 ],
                               );
                              }),
                          ],
                        ),
                      )
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


