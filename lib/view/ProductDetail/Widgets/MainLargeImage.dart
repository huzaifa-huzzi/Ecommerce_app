import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';




class MainLargeImage extends StatelessWidget {
  const MainLargeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 400,
      child: Padding(
        padding: EdgeInsets.all(Sizes.productImageRadius * 2),
        child: Center(
          child: Image(
            image: AssetImage('assets/banners/banner-3.png'),
          ),
        ),
      ),
    );
  }
}