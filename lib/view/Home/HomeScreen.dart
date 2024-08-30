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
      body: Column(
        children: [
          // Appbar and Custom design of background
          ClipPath(
            clipper: CurvedEdges(),
            child: Container(
              color: AppColor.primary,
              child: SizedBox(
                height: 400,
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

                    // AppBar Widget
                    const HomeAppBarWidget(),

                    // Search bar widget with proper positioning
                    const Positioned(
                      left: 0,
                      top: 130,
                      right: 0,
                      child: HomeSearchBar(text: 'Search in store'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeadingWidget(
                              title: 'Popular Categories',
                              onPressed: () {},
                              showActionButton: false,
                              textColor: AppColor.textWhite,
                            ),
                            const SizedBox(height: Sizes.spaceBtwItems),

                            // Adjust ListView height using Expanded
                            Expanded(
                              child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return VerticalImageWidget(
                                    image: '', // Provide the image path here
                                    title: 'Shoes',
                                    onPressed: () {},
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Rest of the content
        ],
      ),
    );
  }
}
