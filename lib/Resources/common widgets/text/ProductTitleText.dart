import 'package:flutter/material.dart';

class ProductTitleText extends StatefulWidget {
  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;
  const ProductTitleText({super.key, required this.title,  this.smallSize = false,  this.maxLines =2, this.textAlign = TextAlign.left,});

  @override
  State<ProductTitleText> createState() => _ProductTitleTextState();
}

class _ProductTitleTextState extends State<ProductTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style:widget.smallSize? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines:widget.maxLines ,
      textAlign: widget.textAlign,
    );
  }
}
