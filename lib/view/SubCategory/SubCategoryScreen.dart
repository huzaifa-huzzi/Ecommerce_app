import 'package:ecommerece_app/Resources/Components/DynamicAppBAr/DynamicAppBar.dart';
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
      appBar:AppBar(
        title: Text('Shoes',style: Theme.of(context).textTheme.headlineMedium,),
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
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/banners/banner-1.png', // Image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: Sizes.spaceBtwSections,),

               /// sub-categories
              Column(
                children: [
                   // headings
                  SectionHeadingWidget(title: 'Nike Shoe', onPressed: (){}),
                  SizedBox(height: Sizes.spaceBtwItems /2,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
