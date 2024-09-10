import 'package:flutter/material.dart';

import 'ProfileAppBarScreen.dart';

class ProfileAppBarWidgetSetInProfile extends StatelessWidget {
  const ProfileAppBarWidgetSetInProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Positioned(
        top: 20,
        left: 20,
        right: 20,
        child:  ProfileAppBarScreenWidget(title: 'Account', subtitle: '')
    );
  }
}

