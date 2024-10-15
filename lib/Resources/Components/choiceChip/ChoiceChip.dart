import 'package:ecommerece_app/Resources/Components/RoundedContainer/RoundedContainer.dat.dart';
import 'package:ecommerece_app/utils/HelperFunction/HelperFunction.dart';
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
      label:HelperFunction.getColor(text) != null ? const SizedBox() : const  Text(
        '',
      ),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: HelperFunction.getColor(text) != null ?  RoundedContainer(width: 50,height: 50,backgroundColor:  HelperFunction.getColor(text) !,) : null ,
       shape:HelperFunction.getColor(text) !=null ? const CircleBorder() : null,
      backgroundColor: Colors.green ,
      labelPadding:HelperFunction.getColor(text) != null ?  EdgeInsets.all(0) : null,
      padding:HelperFunction.getColor(text) != null ? EdgeInsets.all(0) : null,
      selectedColor:Colors.green ,
    );
  }
}
