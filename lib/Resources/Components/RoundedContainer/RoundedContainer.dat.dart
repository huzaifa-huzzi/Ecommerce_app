import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:flutter/material.dart';


class RoundedContainer extends StatefulWidget {
  const RoundedContainer({super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding,
    this.margin ,
    this.backgroundColor =AppColor.textWhite,});

  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color? backgroundColor;

  @override
  State<RoundedContainer> createState() => _RoundedContainerState();
}

class _RoundedContainerState extends State<RoundedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: widget.margin,
      padding: widget.padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius!),
        color:widget.backgroundColor ,
      ),
    );
  }
}
