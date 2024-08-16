import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HelperFunction {

  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'red') {
      return Colors.red;
    }else if (value == 'Blue') {
      return Colors.blue;
    }else if (value == 'pink') {
      return Colors.pink;
    }else if (value == 'Grey') {
      return Colors.grey;
    }else if (value == 'Purple') {
      return Colors.purple;
    }else if (value == 'Black') {
      return Colors.black;
    }else if (value == 'White') {
      return Colors.white;
    }
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  static void ShowAlert(String title,String message,){
    showDialog(context: Get.context!, builder: (BuildContext context){
       return AlertDialog(
         title: Text(title),
         content: Text(message),
         actions: [
           TextButton(onPressed: Navigator.of(context).pop, child: const Text('ok'))
         ],
       );
    });
  }

   static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
   }

  static focusftn(BuildContext context ,FocusNode current,FocusNode next){

    current.unfocus();
    FocusScope.of(context).requestFocus(next);

  }
}