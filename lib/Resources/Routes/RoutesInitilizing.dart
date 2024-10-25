import 'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:ecommerece_app/view/Brand/Brand.dart';
import 'package:ecommerece_app/view/DashBoard%20screen/DashBoardScreen.dart';
import 'package:ecommerece_app/view/Email%20verification/EmailVerification.dart';
import 'package:ecommerece_app/view/Forgot%20Password/ForgotPassword.dart';
import 'package:ecommerece_app/view/View%20All%20Products/ViewAllProducts.dart';
import 'package:ecommerece_app/view/login/LoginScreen.dart';
import 'package:ecommerece_app/view/onBoarding/OnBoardingScreenone/onBoardingScreenOne.dart';
import 'package:ecommerece_app/view/signup/signupScreen.dart';
import 'package:ecommerece_app/view/splash/SplashScreen.dart';
import 'package:get/get.dart';

class AppRoutes{

  static appRoutes() => [
     //splashScreen
    GetPage(name:RouteName.splashScreen , page: () =>  const SplashScreen()),
    // Views
    GetPage(name:RouteName.onBoardingOne , page: () =>const   OnBoardingScreenOne()),
    GetPage(name:RouteName.dashBoardScreen , page: () =>const   DashboardScreen()),
    //Authentication
    GetPage(name:RouteName.onBoardingOne , page: () =>const   LoginScreen()),
    GetPage(name:RouteName.signupScreen , page: () =>const   SignUpScreen()),
    GetPage(name:RouteName.emailVerification , page: () =>const   EmailVerification()),
    GetPage(name:RouteName.emailVerification , page: () =>const   ForgotPassword()),
    GetPage(name:RouteName.AllProductSrceen, page: () =>const   ViewAllProducts()),
    GetPage(name:RouteName.BrandingName, page: () =>const   AllBrandScreen()),

  ];

}