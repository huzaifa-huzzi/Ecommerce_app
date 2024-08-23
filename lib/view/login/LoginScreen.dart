import 'package:ecommerece_app/Resources/SpacingStyles/SpcingStyle.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(
             padding: SpacingStyles.paddingWithAppBarHeight,
             child: Column(
               children: [
                  // logo and Subtitle
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() {
                        return Image.asset(
                          height: 150,
                          themeController.isDarkTheme.value
                              ? 'assets/logos/dark mode.png'  // Dark theme logo
                              : 'assets/logos/light mode.png', // Light theme logo
                        );
                      }),
                      Text(TextSelector.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                     const  SizedBox(height:  Sizes.sm,),
                      Text(TextSelector.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),


                    ],
                  ),
                   // Forms
                  Form(
                      child: Column(
                        children: [
                           //Email
                          TextFormField(
                            decoration:const  InputDecoration(
                              prefixIcon:Icon(Iconsax.direct_right),labelText: 'Email'),
                            ),
                           // Password
                          TextFormField(
                            decoration:const  InputDecoration(
                                prefixIcon:Icon(Iconsax.password_check),labelText: 'Password',suffixIcon: Icon(Iconsax.eye_slash)),
                          ),
                         const  SizedBox(height:  Sizes.spaceBtwInputFields / 2,),

                        ],
                      )
                  ),
                   // Remember me Button
                  Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text('Remember me'),
                        ],
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
