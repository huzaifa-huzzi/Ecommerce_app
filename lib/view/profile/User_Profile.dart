import 'package:ecommerece_app/utils/constants/Sizes.dart';
import 'package:ecommerece_app/view/profile/widget/UserProfileWidget/UserAppBArWidget.dart';
import 'package:ecommerece_app/view/profile/widget/settingMenuTile.dart';
import 'package:flutter/material.dart';

import 'widget/UserProfileWidget/UserProfileNameWidget.dart';


class UserPRofileScreen extends StatefulWidget {
  const UserPRofileScreen({super.key});

  @override
  State<UserPRofileScreen> createState() => _UserPRofileScreenState();
}

class _UserPRofileScreenState extends State<UserPRofileScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const UserappBarWidget(title: 'Profile', subtitle: ''),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
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
                    backgroundImage:const AssetImage('assts/images/background@.png'),
                    radius: 40,
                    backgroundColor: Colors.grey.shade200,
                  ),
                ),
                  TextButton(onPressed: (){}, child:const  Text('Change Profile Picture'))
                  ],),
              ),
              /// Details
              const SizedBox(height: Sizes.spaceBtwItems / 2,),
              const Divider(),
            const SizedBox(height : Sizes.spaceBtwItems),
            ProfileScetionHEading(title: 'Profile Information', onPressed: (){}) ,
              const SizedBox(height:  Sizes.spaceBtwItems,),
               /// Name of Profile and extra information
             const  UserProfileName(name: 'Name', title: 'Huzaifa khan'),
              const  UserProfileName(name: 'Username', title: 'Huzaifa_khan'),

              const SizedBox(height: Sizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),

              /// Heading Personal Info
              ProfileScetionHEading(title: 'Personal Information', onPressed: (){}),
              const SizedBox(height:  Sizes.spaceBtwItems,),

              const  UserProfileName(name: 'User ID', title: 'Huzaifa_khan'),
              const  UserProfileName(name: 'E-mail', title: 'Huzaifa_khan'),
              const  UserProfileName(name: 'Phone number', title: 'Huzaifa_khan'),
              const  UserProfileName(name: 'Gender', title: 'Huzaifa_khan'),
              const  UserProfileName(name: 'Date of birth', title: 'Huzaifa_khan'),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems,),
              Center(
                child: TextButton(onPressed: (){}, child:const  Text('Close Account',style: TextStyle(color: Colors.red),)),
              )



            ],
          ),
        ),
      ),
    );
  }
}


