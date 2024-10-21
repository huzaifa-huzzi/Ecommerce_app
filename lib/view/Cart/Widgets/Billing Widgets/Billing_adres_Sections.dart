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
        ),
        SectionHeadingWidget(title: 'Payment Method', onPressed: (){},buttonTitle: 'Change',),
        const SizedBox( height: Sizes.spaceBtwItems /2,),
        Text('Huzaifa khan',style: Theme.of(context).textTheme.bodyLarge,),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: Sizes.spaceBtwItems,),
            Text('+92 3315178220',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox( height: Sizes.spaceBtwItems /2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: Sizes.spaceBtwItems,),
            Text('Ghazipur colony ,main road ',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
      ],
    );
  }
}
