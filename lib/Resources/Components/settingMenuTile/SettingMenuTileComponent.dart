import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:flutter/material.dart';

class SettingMenuTileComponent extends StatelessWidget {
  const SettingMenuTileComponent({super.key, required this.icon, required this.title, required this.subtitle, this.trailing});

  final IconData icon;
  final String title,subtitle;
  final Widget? trailing ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 28,color: AppColor.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
    );
  }
}
