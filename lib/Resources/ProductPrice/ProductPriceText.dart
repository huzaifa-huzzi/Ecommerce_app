import 'package:flutter/material.dart';


class ProductPriceText extends StatelessWidget {
  const ProductPriceText({super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.lineThrough = false

  });

  final String currencySign,price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(

    )
  }
}
