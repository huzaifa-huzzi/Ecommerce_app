import 'package:ecommerece_app/Resources/Components/CurvedEdges/CurvedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants/sizes.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            CurvedEdgesWidget(
              child: Container(
                color: themeController.isDarkTheme.value
                    ? AppColor.darkerGrey
                    : AppColor.light,
                child: Stack(
                  children: [
                    /// Main Large Image
                    const SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(Sizes.productImageRadius * 2),
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/banners/banner-3.png'),
                          ),
                        ),
                      ),
                    ),

                    /// Image Slider
                    Positioned(
                      bottom: 20,
                      left: 10,
                      right: 10,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (_, index) => ClipRRect(
                            borderRadius: BorderRadius.circular(15), // Rounded corners
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey.shade300, // Border color
                                  width: 2, // Border width
                                ),
                              ),
                              child: Image.asset(
                                'assets/banners/banner-3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          separatorBuilder: (_, __) =>
                          const SizedBox(width: Sizes.spaceBtwItems),
                          itemCount: 4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
