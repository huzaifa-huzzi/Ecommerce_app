import 'package:ecommerece_app/Resources/Routes/RoutesInitilizing.dart';
import 'package:ecommerece_app/utils/Theme/Theme.dart';
import 'package:ecommerece_app/view/splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme:TAppTheme.lightTheme ,
      darkTheme: TAppTheme.dartTheme,
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

