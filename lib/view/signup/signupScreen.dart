import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:  Padding(
            padding:EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(TextSelector.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: Sizes.spaceBtwSections,),
              /// Form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration:const  InputDecoration(
                            labelText: TextSelector.firstName,prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                     const SizedBox(height:Sizes.spaceBtwInputFields),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration:const  InputDecoration(
                            labelText: TextSelector.firstName,prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height:Sizes.spaceBtwInputFields),
                   /// username
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration:const  InputDecoration(
                        labelText: TextSelector.userName,prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                  ),
                  const SizedBox(height:Sizes.spaceBtwInputFields),
                   /// Email
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration:const  InputDecoration(
                        labelText: TextSelector.email,prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                  ),
                  const SizedBox(height:Sizes.spaceBtwInputFields),
                   /// Phone Number
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration:const  InputDecoration(
                        labelText: TextSelector.phoneNo,prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                  ),
                  const SizedBox(height:Sizes.spaceBtwInputFields),
                  /// password
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      expands: false,
                      decoration:const  InputDecoration(
                        labelText: TextSelector.password,prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash)
                      ),
                    ),
                  ),
                  const SizedBox(height:Sizes.spaceBtwSections),
                  /// Terms and conditions checkbox
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value){

                        }),
                      ),
                     const  SizedBox(width: Sizes.spaceBtwItems,),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: '${TextSelector.agreedTo}',style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: TextSelector.privacyPolicy,style: Theme.of(context).textTheme.bodyMedium!.apply(),
                          ),
                          TextSpan(
                            text: '${TextSelector.and}',style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: TextSelector.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(),
                          ),
                        ]
                      ))
                    ],
                  )

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
