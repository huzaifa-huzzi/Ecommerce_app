import 'package:ecommerece_app/Resources/Product%20Card/Product_card_vertical.dart';
import 'package:ecommerece_app/view/wishlist/Widgets/WishListAppBarWidget.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/Sizes.dart';


class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const wishListAppBarWidget(title: 'Wishlist', subtitle:''),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics:const  NeverScrollableScrollPhysics(),
                  gridDelegate:const
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: Sizes.gridViewSpacing,crossAxisSpacing: Sizes.gridViewSpacing,mainAxisExtent: 288), itemBuilder: (_,index){
                return const  ProductCardVertical();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
