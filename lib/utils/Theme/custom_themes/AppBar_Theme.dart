import 'package:flutter/material.dart';


class TAppBarTheme{
  TAppBarTheme._();

  static const lightAppbar = AppBarTheme(
    elevation: 0,
    centerTitle:  false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black,size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black,size: 23),
    titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black)
  );

  static const darkAppBar = AppBarTheme(
      elevation: 0,
      centerTitle:  false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black,size: 24),
      actionsIconTheme: IconThemeData(color: Colors.black,size: 23),
      titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black)
  );



}