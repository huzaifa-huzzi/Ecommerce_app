import 'package:flutter/material.dart';

class AppColor {

  //App Basic Color
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

   //GradientColors
   static const Gradient lightGradient = LinearGradient(
        begin: Alignment(0, 0),
       end: Alignment(0.707, -0.707),
       colors:[
        Color(0xffff9a9e),
         Color(0xfffad0c4),
         Color(0xfffad0c4),
   ]
   );

   //TextColors
  static const Color textPrimary = Color(0xFF33333);
  static const Color  textSecondary= Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //background Colors
  static const Color light = Color(0xFFF6F6FF);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

   //Background Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer = Colors.white.withOpacity(0.1);
  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  // Errors and Validations Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3c);
  static const Color warning = Color(0xFFF57c00);
  static const Color info = Color(0xFF1976D2);

  // Neutral shades

  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color lightGrey = Color(0xFFF9F9F9F);





}