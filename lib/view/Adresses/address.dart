import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/Sizes.dart';
import 'package:ecommerece_app/view/Adresses/add_new_adress.dart';
import 'package:ecommerece_app/view/Adresses/widgets/singleAdressWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class UserAddress extends StatefulWidget {
  const UserAddress({super.key});

  @override
  State<UserAddress> createState() => _UserAddressState();
}

class _UserAddressState extends State<UserAddress> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => Get.to(() =>const  AddNewAddress(),),
            backgroundColor: AppColor.primary,
            child: const Icon(Iconsax.add,color: AppColor.textWhite,),
        ),
      appBar: AppBar(
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,),
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white // Back button color for dark theme
              : Colors.black, // Back button color for light theme
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
             child: Column(
               children: [
                 SingleAddressesWidget(selectedAddress: false),
                 SingleAddressesWidget(selectedAddress: true),
               ],
             ),
        ),
      ),
    );
  }
}
