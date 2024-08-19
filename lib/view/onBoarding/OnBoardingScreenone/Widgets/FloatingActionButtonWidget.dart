

import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/Devics/DeviceUtils.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right:  Sizes.defaultSpace,
        bottom: DeviceUtils.getBottomNavigationHeight(),
        child:ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(shape:const  CircleBorder(),backgroundColor:Colors.black) , child:const  Icon(Iconsax.arrow_right_3)) );
  }
}
