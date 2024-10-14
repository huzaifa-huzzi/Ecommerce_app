import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {  // Renamed to avoid conflict
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        text,
        style: TextStyle(color: selected ? Colors.white : Colors.black),  // labelStyle moved inside Text
      ),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar:const RoundedContainer(width: 50,height: 50,backgroundColor: Colors.green,) ,

    );
  }
}
