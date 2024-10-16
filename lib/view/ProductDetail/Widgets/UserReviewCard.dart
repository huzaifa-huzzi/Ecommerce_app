import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/RatingIndicator.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/constants/sizes.dart';



class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage('assets/images/background@.png'),),
                const SizedBox(width: Sizes.spaceBtwItems,),
                Text('John Doe',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems,),

         /// Reviews
         Row(
           children: [
              RatingBarWidget(),
             const SizedBox(width: Sizes.spaceBtwItems,),
             Text('01 Nov,2023',style: Theme.of(context).textTheme.bodyMedium,),

           ],
         ),
        const SizedBox(height: Sizes.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is quite initutive,I was able to navigate and make purchases seamlessly.',
          trimExpandedText: 'show less',
          trimMode: TrimMode.Line,
          trimLines: 2,
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.primary),
        ),
        const SizedBox(height: Sizes.spaceBtwItems,),

        /// company reviews
        Container(
        color:themeController.isDarkTheme.value ?AppColor.darkerGrey : AppColor.grey, // Use your background color here
        padding: const EdgeInsets.all(16.0), // Adjust the padding as per your layout
    child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    "T's Store",
    style: Theme.of(context).textTheme.titleMedium,
    ),
    Text(
    "02 Nov, 2023",
    style: Theme.of(context).textTheme.bodyMedium,
    ),
    ],
    ),
    const SizedBox(height: 8.0),
    const ReadMoreText(
    'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly.',
    trimLines: 2,
    trimMode: TrimMode.Line,
    trimCollapsedText: 'show more',
    trimExpandedText: 'show less',
    moreStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.blue, // Replace with your theme color
    ),
    lessStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.blue, // Replace with your theme color
    ),
    ),
    ],
    ),
    ),

      ],
    );
  }
}
