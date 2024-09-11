import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class ImageSliderOfProductDetail extends StatelessWidget {
  const ImageSliderOfProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 10,
      right: 10,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (_, index) => ClipRRect(
            borderRadius: BorderRadius.circular(15), // Rounded corners
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.shade300, // Border color
                  width: 2, // Border width
                ),
              ),
              child: Image.asset(
                'assets/banners/banner-3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          separatorBuilder: (_, __) =>
          SizedBox(width: Sizes.spaceBtwItems),
          itemCount: 4,
        ),
      ),
    );
  }
}