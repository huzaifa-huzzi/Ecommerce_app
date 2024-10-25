import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';



class GridLayout extends StatelessWidget {
  const GridLayout({super.key, required this.itemCount, this.mainAxisEvent = 288, required this.itemBuilder});

  final int itemCount;
  final double? mainAxisEvent;
  final Widget? Function(BuildContext,int) itemBuilder ;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics:const  NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          mainAxisExtent: mainAxisEvent,
          mainAxisSpacing: Sizes.gridViewSpacing,
          crossAxisSpacing: Sizes.gridViewSpacing,
        ),
        itemBuilder: itemBuilder
    );
  }
}
