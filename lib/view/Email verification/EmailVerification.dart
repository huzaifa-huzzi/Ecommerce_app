import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';


class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body:const   SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
               /// Image

               /// Title and subtitle

              /// Buttons
            ],
          ),
        ),
      ),
    );
  }
}
