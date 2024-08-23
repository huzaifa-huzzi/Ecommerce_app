import 'package:ecommerece_app/Resources/SpacingStyles/SpcingStyle.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
                    ],
                  )
               ],
             ),
         ),
       ),
    );
  }
}
