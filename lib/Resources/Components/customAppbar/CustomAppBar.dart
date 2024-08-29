import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Widget? title;
   final bool showBackError ;
   final IconData? leadingIcon;
   final List<Widget>? actions;
   final VoidCallback? leadingOnPressed;

  const CustomAppBar({super.key, this.title, required this.showBackError, this.leadingIcon, this.actions, this.leadingOnPressed});

   @override
  Widget build(BuildContext context){
     return Padding(
         padding:const  EdgeInsets.symmetric(horizontal: Sizes.md),
         child: AppBar(
           automaticallyImplyLeading: false,
           leading: showBackError
               ? IconButton(onPressed: () => Get.back(), icon:const  Icon(Icons.arrow_left))
               : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
         actions: actions,
         ),
     );
   }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

}