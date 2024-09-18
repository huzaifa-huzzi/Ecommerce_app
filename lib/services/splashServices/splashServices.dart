import 'dart:async';
import'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:get/get.dart';

class SplashServices {

   void isTiming() {
     Timer(const Duration(seconds: 3), () {
       Get.toNamed(RouteName.onBoardingOne);
     });
   }


}