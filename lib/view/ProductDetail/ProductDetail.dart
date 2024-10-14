import 'package:ecommerece_app/Resources/Components/CurvedEdges/CurvedEdges.dart';
import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/Sizes.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/ImageSliderOfProductWidget.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/MainLargeImage.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/ProductAppBarWidget.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/RatingWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';





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
                   const  MainLargeImage(),

                    /// Image Slider
                    const ImageSliderOfProductDetail(),

                     /// AppBar Icons
                      ProductAppBarWidget(title: '', subtitle: '', onFavoritePressed: (){})
                  ],
                ),
              ),
            ),
            /// Product Detail
               Padding(
                 padding: const EdgeInsets.only(right: Sizes.defaultSpace,left: Sizes.defaultSpace,bottom: Sizes.defaultSpace),
               child: Column(
                 children: [
                    /// Rating & share button
                   RatingWidget(),
                   /// - Price,Title,stack & Brand
                    Row(
                      children: [
                        /// Sale Tag
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.yellow.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Text(
                              '25%',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: Sizes.spaceBtwItems,),
                        /// Price
                        Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                        SizedBox(width: Sizes.spaceBtwItems,),
                        
                      ],
                    )
                   ///  - Attribution
                   ///  CheckOut Button
                   ///  Description
                   ///  Reviews
                 ],
               ),
             ),
          ],
        ),
      ),
    );
  }
}


