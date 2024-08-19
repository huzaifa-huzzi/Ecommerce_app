import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_model/Controller/ThemeController/ThemeController.dart';

class SplashScreen extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          themeController.toggleTheme();
        },
        child: Icon(Icons.brightness_6),
      ),
    );
  }
}
