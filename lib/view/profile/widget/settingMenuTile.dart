import 'package:flutter/material.dart';


class ProfileScetionHEading extends StatelessWidget {
  const ProfileScetionHEading({super.key, this.textColor,  this.showActionButton = true, required this.title, required this.onPressed,});

  final Color? textColor;
  final bool showActionButton;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style:Theme.of(context).textTheme.headlineSmall!.apply(color:textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}
