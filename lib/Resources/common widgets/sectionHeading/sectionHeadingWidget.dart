import 'package:flutter/material.dart';


class SectionHeadingWidget extends StatelessWidget {
  const SectionHeadingWidget({super.key, this.textColor,  this.showActionButton = true, required this.title,  this.buttonTitle = 'view All', required this.onPressed,});

  final Color? textColor;
  final bool showActionButton;
  final String title,buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style:Theme.of(context).textTheme.headlineSmall!.apply(color:textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
