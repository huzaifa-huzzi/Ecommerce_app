import 'package:ecommerece_app/Resources/Components/successScreen/SuccessScreen.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/view/Cart/Widgets/Billing%20Widgets/Billing_adres_Sections.dart';
import 'package:ecommerece_app/view/Cart/Widgets/Billing%20Widgets/billing_Payment_sections.dart';
import 'package:ecommerece_app/view/Cart/Widgets/CartIteWidget.dart';
import 'package:ecommerece_app/view/Cart/Widgets/CouponCode.dart';
import 'package:ecommerece_app/view/DashBoard%20screen/DashBoardScreen.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white
              : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Items in cart
              CartItemWidget(),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// -- Coupon TextField with rounded container
              CouponCode(themeController: themeController),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// -- Billing Sections
               const SizedBox(height: Sizes.spaceBtwSections),
              Container(
                height: 400,
                padding: const EdgeInsets.all(20),  // Added padding for a clean look
                margin: const EdgeInsets.symmetric(vertical: 10.0),  // Adds vertical spacing outside the container
                decoration: BoxDecoration(
                  color: themeController.isDarkTheme.value
                      ? AppColor.dark
                      : Colors.white,
                  borderRadius: BorderRadius.circular(15),  // Rounded corners
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,  // Soft shadow
                      spreadRadius: 1.0,
                      offset: Offset(0, 5),  // Slight shadow below
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    /// Pricing Section
                    const BillingPAymentSections(),
                    const SizedBox(height: Sizes.spaceBtwSections),

                    /// Divider
                    Divider(
                      color: themeController.isDarkTheme.value
                          ? Colors.white
                          : AppColor.dark,
                      thickness: 2,  // Thicker divider for better separation
                    ),
                    const SizedBox(height: Sizes.spaceBtwItems),

                    /// Payment Section (e.g. Billing Address)
                    const BillingAdressSections(),
                    const SizedBox(height: Sizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


         /// checkout screen
               bottomNavigationBar: Padding(
                   padding:const  EdgeInsets.all(Sizes.defaultSpace),
                 child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(image: 'assets/icons/payment icon.png', title: 'Payment Successful', subtitle: ' Your item will be shipped soon!', onTap:() => const  DashboardScreen())), child:const  Text(' Checkout \$256.0')),

               ),
          );
  }
}


