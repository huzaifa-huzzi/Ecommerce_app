import 'package:ecommerece_app/Resources/Components/CurvedEdges/CurvedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/Sizes.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/ImageSliderOfProductWidget.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/MainLargeImage.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/ProductAppBarWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
             const Padding(
                 padding: EdgeInsets.only(right: Sizes.defaultSpace,left: Sizes.defaultSpace,bottom: Sizes.defaultSpace),
               child: Column(
                 children: [
                    /// Rating & Share Button
                   /// - Price,Titil,stack & Brand
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




