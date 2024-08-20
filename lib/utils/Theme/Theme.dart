import 'package:ecommerece_app/utils/Theme/custom_themes/AppBar_Theme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/BottomSheet_Theme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/ChipTheme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/OutLineButton_theme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/checkBox_theme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/text_form_feild_Theme.dart';
import 'package:ecommerece_app/utils/Theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();


   //Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightButtonTheme,
    outlinedButtonTheme: TOutlineButton.lightButtonTheme,
    inputDecorationTheme: TTextFormField.lightInputTextTheme,
    appBarTheme: TAppBarTheme.lightAppbar,
    bottomSheetTheme: TBottomSheet.lightBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: TChipTheme.lightChipTheme,
  );
   // dark Theme
  static ThemeData dartTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkButtonTheme,
    outlinedButtonTheme: TOutlineButton.darkButtonTheme,
    inputDecorationTheme: TTextFormField.darkInputTextTheme,
    appBarTheme: TAppBarTheme.darkAppBar,
    bottomSheetTheme: TBottomSheet.darkBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: TChipTheme.darkChipTheme,
  );


}