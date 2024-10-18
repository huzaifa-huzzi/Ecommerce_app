import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';



class BillingAdressSections extends StatelessWidget {
  const BillingAdressSections({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Column(
      children: [
         SectionHeadingWidget(title: 'Payment Method', onPressed: (){},buttonTitle: 'Change',),
        const SizedBox( height: Sizes.spaceBtwItems /2,),
        Row(
          children: [
            Container(
              constraints: const BoxConstraints(
                maxWidth: 60,
                maxHeight: 40,
              ),
              decoration: BoxDecoration(
                color: themeController.isDarkTheme.value ? AppColor.light : Colors.white,
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              padding: const EdgeInsets.all(0), // No padding to utilize full space
              child: const Image(
                image: AssetImage('assets/images/paypal.jpeg'),
                fit: BoxFit.contain, // Fit the image within the container
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems / 2), // Space between the image and text
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.bodyLarge,
            ),


          ],
        )
      ],
    );
  }
}
