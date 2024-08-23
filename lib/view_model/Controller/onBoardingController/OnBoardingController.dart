

import 'package:ecommerece_app/Resources/Routes/RoutesName.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {

    //variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs ;

    // Functions
      void updatePageIndicator(index) => currentIndex = index;
      void dotNavigationClick(index) {
        currentIndex.value = index;
        pageController.jumpTo(index);
      }
      void skipPage(){
        currentIndex.value = 0;
        pageController.jumpToPage(2);
      }
      void nextPage(){
          if(currentIndex.value == 2){
           Get.toNamed(RouteName.loginScreen);
          }else{
            int page = currentIndex.value + 1 ;
            pageController.jumpToPage(page);
          }
      }

}