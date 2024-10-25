import 'package:ecommerece_app/services/splashServices/splashServices.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ThemeController themeController = Get.put(ThemeController());
  SplashServices services = SplashServices();

  @override
  void initState() {
    super.initState();
    services.isTiming();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Obx(() {
          return Image.asset(
            themeController.isDarkTheme.value
                ? 'assets/logos/dark mode.png'  // Dark theme logo
                : 'assets/logos/light mode.png', // Light theme logo
          );
        }),
      ),
      floatingActionButton: Obx(() {
        return FloatingActionButton(
          onPressed: () {
            themeController.toggleTheme();
          },
          backgroundColor: themeController.isDarkTheme.value
              ? Colors.white  // Light background when dark theme is active
              : Colors.black,  // Dark background when light theme is active
          child: Icon(
            Icons.brightness_6,
            color: themeController.isDarkTheme.value
                ? Colors.black  // Icon color for dark theme
                : Colors.white, // Icon color for light theme
          ),
        );
      }),
    );
  }
}
