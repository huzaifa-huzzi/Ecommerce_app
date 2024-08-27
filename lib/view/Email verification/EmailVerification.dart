import 'package:ecommerece_app/Resources/Components/successScreen/SuccessScreen.dart';
import 'package:ecommerece_app/view/login/LoginScreen.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/Devics/DeviceUtils.dart';
import '../../utils/HelperFunction/HelperFunction.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';


class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {;
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() =>const  LoginScreen()), icon: Icon(CupertinoIcons.clear,color: themeController.isDarkTheme.value ? Colors.white : Colors.black ,))
        ],
      ),
      body:   SingleChildScrollView(
        child: Padding(
            padding:const  EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
               /// Image
                Image(
                    image:const AssetImage('assets/images/Mailman.png'),
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
              const  SizedBox(height: Sizes.spaceBtwSections,),
               /// Title and subtitle
              Text(TextSelector.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: Sizes.spaceBtwItems,),
              Text('support@gmail.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              Text(TextSelector.confirmEmailSubtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: Sizes.spaceBtwSections,),

              /// Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(
                  SuccessScreen(
                     image: 'assets/images/sale.jpeg',
                     title: TextSelector.accountCreatedSuccessfully,
                    subtitle: TextSelector.accountCreatedSuccessfullySubtitle,
                    onTap: () => Get.to(() =>const  LoginScreen()),

              )), child:const  Text('Continue')),),
              const SizedBox(height: Sizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child:const  Text('resend Email')),),
            ],
          ),
        ),
      ),
    );
  }
}
