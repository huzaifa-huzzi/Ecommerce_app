import 'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:ecommerece_app/Resources/SpacingStyles/SpcingStyle.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view/DashBoard%20screen/DashBoardScreen.dart';
import 'package:ecommerece_app/view/Forgot%20Password/ForgotPassword.dart';
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
                  /// logo and Subtitle
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
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
                        const  SizedBox(height:  Sizes.sm,width: Sizes.sm,),
                        Text(TextSelector.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                       const  SizedBox(height:  Sizes.sm,),
                        Text(TextSelector.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),


                      ],
                    ),
                  ),
                   /// Forms
                  Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBtwSections),
                        child: Column(
                          children: [
                             //Email
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Iconsax.direct_right),
                                labelText: TextSelector.email,
                                labelStyle: TextStyle(
                                  color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: Sizes.spaceBtwInputFields / 2),
                             // Password
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Iconsax.password_check),
                                labelText: TextSelector.password,
                                suffixIcon: const Icon(Iconsax.eye_slash),
                                labelStyle: TextStyle(
                                  color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                                ),
                              ),
                            ),

                            // Remember me Button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (value){}),
                                    const Text('Remember me'),
                                  ],
                                ),
                                //Forgot Button
                                TextButton(onPressed: (){
                                  Get.off(() =>const  ForgotPassword());
                                }, child: const Text(TextSelector.forgotPassword))
                              ],
                            ),
                            const  SizedBox(height: Sizes.spaceBtwItems,),
                            // SignIn Button
                            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.off(const DashboardScreen()) , child: const Text('Sign in')),),
                           const  SizedBox(height: Sizes.spaceBtwItems,),
                            // create Account
                            SizedBox(width: double.infinity,child: OutlinedButton(onPressed: ()=>Get.toNamed(RouteName.signupScreen) , child: const Text('Create Account')),),



                          ],
                        ),
                      )
                  ),
                 const  SizedBox(height: Sizes.spaceBtwItems,),
                  /// Divider
                 Row(
                   children: [
                     Flexible(child: Divider(color: themeController.isDarkTheme.value ? AppColor.grey: AppColor.darkGrey,thickness: 2,indent:60 ,endIndent: 5,)),
                     Obx((){
                       return Text('Or SignIn with'.capitalize!,style: TextStyle(fontSize: 15,color:themeController.isDarkTheme.value ? AppColor.grey: AppColor.darkGrey),);
                     }),
                     Flexible(child: Divider(color: themeController.isDarkTheme.value ? AppColor.grey: AppColor.darkGrey,thickness: 2,indent:5 ,endIndent: 60,))
                   ],
                 ),
                 /// Footer
                 const  SizedBox(height: Sizes.spaceBtwItems,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(onPressed: (){}, icon:const  Image(
                            width: Sizes.iconMd,
                            height: Sizes.iconMd,
                            image: AssetImage('assets/icons/google.png'))),
                      ),
                    const  SizedBox(width: Sizes.spaceBtwItems,),
                     Container(
                       decoration: BoxDecoration(
                         border:Border.all(color: AppColor.grey),
                         borderRadius: BorderRadius.circular(100),
                       ),
                       child: IconButton(onPressed: (){}, icon:const  Image(
                           width: Sizes.iconMd,
                           height: Sizes.iconMd,
                           image: AssetImage('assets/icons/facebook.png'))),
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
