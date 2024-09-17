import 'package:get/get.dart';
import 'package:flutter/material.dart';



class ThemeController extends GetxController {
  RxBool isDarkTheme = false.obs;

  void toggleTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }
}
