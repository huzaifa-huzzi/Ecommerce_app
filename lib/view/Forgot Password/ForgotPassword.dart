import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view/Forgot%20Password/ResetPassword/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding:const  EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             /// Headings
              Text(TextSelector.forgotPassword,style: Theme.of(context).textTheme.headlineMedium,),
             const  SizedBox(height: Sizes.spaceBtwItems,),
            Text(TextSelector.forgotPasswordScreenSubtitle,style: Theme.of(context).textTheme.labelMedium,),
           const  SizedBox(height: Sizes.spaceBtwSections * 2,),

             /// TextFields
            TextFormField(
              decoration:const  InputDecoration(labelText: TextSelector.email,prefixIcon: Icon(Iconsax.direct_right)),
            ),
           const  SizedBox(height: Sizes.spaceBtwSections,),

            /// submit buttons
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.off(() =>const ResetPassword() ), child:const  Text('Submit')),)
          ],
        ),
      ),
    );
  }
}
