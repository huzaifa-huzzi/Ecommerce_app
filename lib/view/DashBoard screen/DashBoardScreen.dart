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
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  final ThemeController themeController = Get.put(ThemeController());

  List<Widget> _buildScreens() {
    return const [
      HomeScreen(),
      StoreScreen(),
      WishlistScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.home, color: themeController.isDarkTheme.value ? Colors.white : Colors.black),
        title: "Home",
        activeColorPrimary: themeController.isDarkTheme.value ? Colors.white : Colors.black,
        inactiveColorPrimary: themeController.isDarkTheme.value ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.shop, color: themeController.isDarkTheme.value ? Colors.white : Colors.black),
        title: "Store",
        activeColorPrimary: themeController.isDarkTheme.value ? Colors.white : Colors.black,
        inactiveColorPrimary: themeController.isDarkTheme.value ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.heart, color: themeController.isDarkTheme.value ? Colors.white : Colors.black),
        title: "Wishlist",
        activeColorPrimary: themeController.isDarkTheme.value ? Colors.white : Colors.black,
        inactiveColorPrimary: themeController.isDarkTheme.value ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.user, color: themeController.isDarkTheme.value ? Colors.white : Colors.black),
        title: "Profile",
        activeColorPrimary: themeController.isDarkTheme.value ? Colors.white : Colors.black,
        inactiveColorPrimary: themeController.isDarkTheme.value ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        padding: const EdgeInsets.only(top: 8),
        backgroundColor: themeController.isDarkTheme.value ? Colors.black : Colors.white,
        isVisible: true,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: true,
            duration: Duration(milliseconds: 200),
            screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
          ),
        ),
        confineToSafeArea: true,
        navBarHeight: kBottomNavigationBarHeight,
        navBarStyle: NavBarStyle.style1, // Updated style to show titles
      )),
    );
  }
}
