import 'package:ecommerece_app/view/order%20screen/Widgets/OrderListItem.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';



class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       /// -- Appbar
      appBar: AppBar(title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
           /// -- orders
            child: OrderListItem(),
      ),
    );
  }
}
