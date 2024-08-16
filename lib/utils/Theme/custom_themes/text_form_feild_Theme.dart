import 'package:flutter/material.dart';

class TTextFormField {
  TTextFormField._();

  static InputDecorationTheme lightInputTextTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    //constrainsts
     labelStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
     hintStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border:const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.grey )),
     enabledBorder:  const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.grey )),
     focusedBorder:  const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.black12 )),
     errorBorder:  const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.red )),
    focusedErrorBorder: const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.orange ))
  );

  static InputDecorationTheme darkInputTextTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      //constrainsts
      labelStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
      errorStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border:const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.grey )),
      enabledBorder:  const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.grey )),
      focusedBorder:  const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.black12 )),
      errorBorder:  const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.red )),
      focusedErrorBorder: const  OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),borderSide:const  BorderSide(width: 1,color:Colors.orange ))
  );
}