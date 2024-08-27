import 'package:ecommerece_app/Resources/Components/successScreen/SuccessScreen.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view/login/LoginScreen.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
           IconButton(onPressed: () => Get.off(() =>const  LoginScreen()), icon:Icon(CupertinoIcons.clear,color: themeController.isDarkTheme.value ? Colors.white : Colors.black,)),
          

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:const  EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image:const  AssetImage('assets/images/Mailman.png'),
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              const  SizedBox(height: Sizes.spaceBtwSections,),
              /// Title and subtitle
              Text(TextSelector.forgotPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: Sizes.spaceBtwItems,),
              Text(TextSelector.forgotPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: Sizes.spaceBtwSections,),

              /// Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:(){}, child:const  Text('Done')),),
              const SizedBox(height: Sizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed:(){}, child:const  Text('Resend Email')),),

            ],
          ),
        ),
      ),
    );
  }
}
