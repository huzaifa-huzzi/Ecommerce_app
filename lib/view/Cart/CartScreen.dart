import 'package:ecommerece_app/view/Cart/ChecoutScreen.dart';
import 'package:ecommerece_app/view/Cart/Widgets/CartIteWidget.dart';
import 'package:ecommerece_app/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants/sizes.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white
              : Colors.black,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (_, __) =>
                const SizedBox(height: Sizes.spaceBtwSections),
                itemCount: 4, // Example item count
                itemBuilder: (_, index) => CartItemWidget(),
              ),
            ),
          ),
          // Checkout Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Checkout: \$1024.00',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  width: 160, // Set the desired width here
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const CheckoutScreen()),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16), // Adjust the height
                    ),
                    child:const   Text('Checkout'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

