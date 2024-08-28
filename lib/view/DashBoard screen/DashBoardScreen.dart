import 'package:ecommerece_app/view/Home/HomeScreen.dart';
import 'package:ecommerece_app/view/Store/StoreScreen.dart';
import 'package:ecommerece_app/view/profile/ProfileScreen.dart';
import 'package:ecommerece_app/view/wishlist/wishListScreen.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  final ThemeController themeController = Get.put(ThemeController());



  List<Widget> _buildScreens() {
    return  const [
      HomeScreen(),
      StoreScreen(),
      WishlistScreen(),
      ProfileScreen(),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon:const Icon(Iconsax.home,color: Colors.black,),
          activeColorPrimary: Colors.black,
          inactiveIcon:const Icon(Iconsax.home,color: Colors.white,),
        title: ('Home'),
      ),

      PersistentBottomNavBarItem(
        icon:const Icon(Icons.shop,color: Colors.white,),
        activeColorPrimary: themeController.isDarkTheme.value ? Colors.white : Colors.black ,
        inactiveIcon: Icon(Iconsax.shop,color: themeController.isDarkTheme.value ? Colors.white : Colors.black ,),
        title: ('shop'),
      ),
      PersistentBottomNavBarItem(
          icon:const Icon(Iconsax.heart,color: Colors.black,),
          activeColorPrimary: themeController.isDarkTheme.value ? Colors.white : Colors.black ,
          inactiveIcon:  Icon(Iconsax.heart,color:themeController.isDarkTheme.value ? Colors.white : Colors.black),
        title: ('Wishlist'),

      ),
      PersistentBottomNavBarItem(
          icon:const Icon(Iconsax.user,color: Colors.black,),
          activeColorPrimary:themeController.isDarkTheme.value ? Colors.white : Colors.black  ,
          inactiveIcon:  Icon(Iconsax.user,color:themeController.isDarkTheme.value ? Colors.white : Colors.black ),
        title: ('Profile'),
      ),
    ];
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
    items: _navBarsItems(),
    handleAndroidBackButtonPress: true, // Default is true.
    resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
    stateManagement: true, // Default is true.
    hideNavigationBarWhenKeyboardAppears: true,
    padding: const EdgeInsets.only(top: 8),
    backgroundColor:themeController.isDarkTheme.value ? Colors.white : Colors.black ,
    isVisible: true,
    animationSettings: const NavBarAnimationSettings(
    navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
    duration: Duration(milliseconds: 400),
    curve: Curves.ease,
    ),
    screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
    animateTabTransition: true,
    duration: Duration(milliseconds: 200),
    screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
    ),
    ),
    confineToSafeArea: true,
    navBarHeight: kBottomNavigationBarHeight,
    navBarStyle:NavBarStyle.style1 , // Choose the nav bar style with this property
    ),
    );
  }
}