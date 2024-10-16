import 'package:ecommerece_app/utils/HelperFunction/HelperFunction.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/ProductDetail/Widgets/RatingIndicator.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
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
                CircleAvatar(backgroundImage: AssetImage(''),),
                SizedBox(width: Sizes.spaceBtwItems,),
                Text('John Doe',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(height: Sizes.spaceBtwItems,),

         /// Reviews
         Row(
           children: [
              RatingBarWidget(),
             SizedBox(width: Sizes.spaceBtwItems,),
             Text('01 Nov,2023',style: Theme.of(context).textTheme.bodyMedium,),

           ],
         ),
        SizedBox(height: Sizes.spaceBtwItems,),
        ReadMoreText(
          'The user interface of the app is quite initutive,I was able to navigate and make purchases seamlessly.',
          trimExpandedText: 'show less',
          trimMode: TrimMode.Line,
          trimLines: 2,
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.primary),
        ),
        SizedBox(height: Sizes.spaceBtwItems,),

        /// company reviews


      ],
    );
  }
}
