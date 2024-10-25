import 'package:flutter/material.dart';

class TabBarStoreWidget extends StatefulWidget implements PreferredSizeWidget {
  const TabBarStoreWidget({super.key});

  @override
  _TabBarStoreWidgetState createState() => _TabBarStoreWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(50); // Adjust the height
}

class _TabBarStoreWidgetState extends State<TabBarStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(text: 'Sports'),
        Tab(text: 'Furniture'),
        Tab(text: 'Electronics'),
        Tab(text: 'Clothes'),
        Tab(text: 'Cosmetics'),
      ],
    );
  }
}
