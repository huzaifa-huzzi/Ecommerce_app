import 'package:ecommerece_app/Resources/Components/settingMenuTile/SettingMenuTileComponent.dart';
import 'package:ecommerece_app/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerece_app/utils/constants/Sizes.dart';
import 'package:ecommerece_app/view/profile/widget/UserProfileWidget/UserAppBArWidget.dart';
import 'package:ecommerece_app/view/profile/widget/settingMenuTile.dart';
import 'package:flutter/material.dart';


class UserPRofileScreen extends StatefulWidget {
  const UserPRofileScreen({super.key});

  @override
  State<UserPRofileScreen> createState() => _UserPRofileScreenState();
}

class _UserPRofileScreenState extends State<UserPRofileScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: UserappBarWidget(title: 'Profile', subtitle: ''),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
               /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                 SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage:AssetImage('assts/images/background@.png'),
                    radius: 40,
                    backgroundColor: Colors.grey.shade200,
                  ),
                ),
                  TextButton(onPressed: (){}, child:const  Text('Change Profile Picture'))
                  ],),
              ),
              /// Details
              SizedBox(height: Sizes.spaceBtwItems / 2,),
              const Divider(),
            SizedBox(height : Sizes.spaceBtwItems),
            ProfileScetionHEading(title: 'Profile Information', onPressed: (){}) ,
              SizedBox(height:  Sizes.spaceBtwItems,),

            ],
          ),
        ),
      ),
    );
  }
}
