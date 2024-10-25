import 'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TextSelector.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              labelText: TextSelector.firstName,
                              prefixIcon:const  Icon(Iconsax.user),
                              labelStyle: TextStyle(
                                color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                              ),
                              hintStyle: TextStyle(
                                color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
                              ),
                            ),
                            style: TextStyle(
                              color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: Sizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              labelText: TextSelector.lastName,
                              prefixIcon: const Icon(Iconsax.user),
                              labelStyle: TextStyle(
                                color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                              ),
                              hintStyle: TextStyle(
                                color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
                              ),
                            ),
                            style: TextStyle(
                              color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Sizes.spaceBtwInputFields),
                    /// Username
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: TextSelector.userName,
                        prefixIcon: const Icon(Iconsax.user_edit),
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                        ),
                        hintStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
                        ),
                      ),
                      style: TextStyle(
                        color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: Sizes.spaceBtwInputFields),
                    /// Email
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: TextSelector.email,
                        prefixIcon: const Icon(Iconsax.direct),
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                        ),
                        hintStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
                        ),
                      ),
                      style: TextStyle(
                        color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: Sizes.spaceBtwInputFields),
                    /// Phone Number
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: TextSelector.phoneNo,
                        prefixIcon: const Icon(Iconsax.call),
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                        ),
                        hintStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
                        ),
                      ),
                      style: TextStyle(
                        color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: Sizes.spaceBtwInputFields),
                    /// Password
                    TextFormField(
                      obscureText: true,
                      expands: false,
                      decoration: InputDecoration(
                        labelText: TextSelector.password,
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: const Icon(Iconsax.eye_slash),
                        labelStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                        ),
                        hintStyle: TextStyle(
                          color: themeController.isDarkTheme.value ? Colors.white54 : Colors.black54,
                        ),
                      ),
                      style: TextStyle(
                        color: themeController.isDarkTheme.value ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: Sizes.spaceBtwSections),
                    /// Terms and conditions checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {
                          }),
                        ),
                        const SizedBox(width: Sizes.spaceBtwItems,),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: TextSelector.agreedTo,
                                    style: Theme.of(context).textTheme.bodySmall,
                                  ),
                                  const  WidgetSpan(
                                    child: SizedBox(width: 5), // Add some space before Privacy Policy
                                  ),
                                  TextSpan(
                                    text: TextSelector.privacyPolicy,
                                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: themeController.isDarkTheme.value ? Colors.white : AppColor.primary,
                                    ),
                                  ),
                                  const  WidgetSpan(
                                    child: SizedBox(width: 5), // Add some space after Privacy Policy
                                  ),
                                  TextSpan(
                                    text: TextSelector.and,
                                    style: Theme.of(context).textTheme.bodySmall,
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(width: 5), // Add some space before Terms of Use
                                  ),
                                  TextSpan(
                                    text: TextSelector.termsOfUse,
                                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: themeController.isDarkTheme.value ? Colors.white : AppColor.primary,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Sizes.spaceBtwSections),

                    /// Signup Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(RouteName.emailVerification);
                        },
                        child: const Text(TextSelector.createAccount),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: Sizes.spaceBtwSections),

              /// Divider
              Row(
                children: [
                  Flexible(
                    child: Divider(
                      color: themeController.isDarkTheme.value
                          ? AppColor.grey
                          : AppColor.darkGrey,
                      thickness: 2,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Obx(() {
                    return Text(
                      'Or SignUp with'.capitalize!,
                      style: TextStyle(
                        fontSize: 15,
                        color: themeController.isDarkTheme.value
                            ? AppColor.grey
                            : AppColor.darkGrey,
                      ),
                    );
                  }),
                  Flexible(
                    child: Divider(
                      color: themeController.isDarkTheme.value
                          ? AppColor.grey
                          : AppColor.darkGrey,
                      thickness: 2,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// Social Media Accounts
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: Sizes.iconMd,
                        height: Sizes.iconMd,
                        image: AssetImage('assets/icons/google.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: Sizes.iconMd,
                        height: Sizes.iconMd,
                        image: AssetImage('assets/icons/facebook.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
