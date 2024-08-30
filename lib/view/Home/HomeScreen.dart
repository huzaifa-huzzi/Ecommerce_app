import 'package:ecommerece_app/Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/Resources/common%20widgets/VerticalImageWidget/verticalImageWidget.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../Resources/common widgets/searchBAr/HomeSearchBAr.dart';
import '../../Resources/common widgets/sectionHeading/sectionHeadingWidget.dart';

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
                            SectionHeadingWidget(title: 'Popular Categories', onPressed: (){},showActionButton: false,textColor:AppColor.textWhite,),
                            const SizedBox(height: Sizes.spaceBtwItems,),
                            SizedBox(
                              height: 80,
                              child: ListView.builder(
                                  itemCount: 6,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context,index){
                                 return VerticalImageWidget(image: '', title: 'Shoes', onPressed: (){});
                                }),
                            ),
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
