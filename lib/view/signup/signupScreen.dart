import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      TextFormField(
                        expands: false,
                        decoration:const  InputDecoration(
                          labelText: TextSelector.firstName,prefixIcon: Icon(Iconsax.user),
                        ),
                      )
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
