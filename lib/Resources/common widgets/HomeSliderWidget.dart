import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/HomeController/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants/sizes.dart';




class HomeSliderWidget extends StatelessWidget {
  const HomeSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: [
              Container(
                width: 320,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.md),
                  child: Image.asset(
                    'assets/banners/banner-1.png',
                    fit: BoxFit.contain, // or BoxFit.fill
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.md),
                  child: Image.asset(
                    'assets/banners/banner-1.png',
                    fit: BoxFit.contain, // or BoxFit.fill
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.md),
                  child: Image.asset(
                    'assets/banners/banner-1.png',
                    fit: BoxFit.contain, // or BoxFit.fill
                  ),
                ),
              )
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            )),
        const SizedBox(height: Sizes.spaceBtwItems,),
        Obx(() {
          return Center( // Centering the Row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center items inside the Row
              children: [
                for (int i = 0; i < 3; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AppColor.primary
                        : AppColor.grey,
                    margin: const EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
