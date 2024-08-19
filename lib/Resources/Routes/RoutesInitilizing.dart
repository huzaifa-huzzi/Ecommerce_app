


import 'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:ecommerece_app/view/splash/SplashScreen.dart';
import 'package:get/get.dart';

class AppRoutes{

  static appRoutes() => [
    GetPage(name:RouteName.splashScreen , page: () =>  SplashScreen()),
    // login Screen

  ];

}