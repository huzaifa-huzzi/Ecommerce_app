import 'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:ecommerece_app/view/onBoarding/OnBoardingScreenone/onBoardingScreenOne.dart';
import 'package:ecommerece_app/view/splash/SplashScreen.dart';
import 'package:get/get.dart';

class AppRoutes{

  static appRoutes() => [
     //splashScreen
    GetPage(name:RouteName.splashScreen , page: () =>  SplashScreen()),
    // Views
    GetPage(name:RouteName.onBoardingOne , page: () =>const   OnBoardingScreenOne()),
    //Authentication

  ];

}