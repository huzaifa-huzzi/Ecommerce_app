import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
import 'package:ecommerece_app/Resources/Product%20Card/Product_card_horizontal.dart';
import 'package:ecommerece_app/Resources/Product%20Card/Product_card_vertical.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/utils/constants/Sizes.dart';
import 'package:flutter/material.dart';



class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({super.key});

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/banners/banner-1.png', // Image path
                    fit: BoxFit.cover,
                  ),
                ),
                ),
              SizedBox(height: Sizes.spaceBtwSections),

              /// Sub-categories
              Column(
                children: [
                  // Section Heading
                  SectionHeadingWidget(title: 'Nike Shoe', onPressed: () {}),
                  SizedBox(height: Sizes.spaceBtwItems / 2),

                  /// Horizontal Product List
                  SizedBox(
                    height: 160, // Adjust the height based on the card height
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => ProductCardHorizontal(),
                      separatorBuilder: (context, index) => SizedBox(width: 8),
                      itemCount: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
