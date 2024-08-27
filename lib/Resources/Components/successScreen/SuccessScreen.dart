import 'package:ecommerece_app/Resources/SpacingStyles/SpcingStyle.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  final String image,title, subtitle;
   final VoidCallback onTap ;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: SingleChildScrollView(
     child: Padding(
         padding: SpacingStyles.paddingWithAppBarHeight * 2,
         child: Column(
           children: [
         /// Image
         Image(
         image: AssetImage(image),
         width: MediaQuery.of(context).size.width * 0.6,
     ),
         const  SizedBox(height: Sizes.spaceBtwSections,),
             /// Title and subtitle
           Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: Sizes.spaceBtwItems,),
          Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
           const SizedBox(height: Sizes.spaceBtwSections,),

              /// Buttons
             SizedBox(width: double.infinity,child: ElevatedButton(onPressed:onTap, child:const  Text('Continue')),),
           ],
         ),
     ),
 ),
    );
  }
}
