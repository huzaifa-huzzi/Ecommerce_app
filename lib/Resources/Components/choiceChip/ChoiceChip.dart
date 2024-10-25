import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final Function(bool) onSelected;
  final Color color;

  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
        ),
      ),
      selected: selected,
      onSelected: onSelected,
      selectedColor: color,
      backgroundColor: Colors.grey[300],
    );
  }
}
