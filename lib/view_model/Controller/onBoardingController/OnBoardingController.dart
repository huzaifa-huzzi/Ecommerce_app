import 'package:ecommerece_app/view/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {

  // Variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  // Functions
  void updatePageIndicator(int index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void skipPage() {
    currentIndex.value = 0;
    pageController.jumpToPage(2);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}
