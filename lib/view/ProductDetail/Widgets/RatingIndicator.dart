import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/Colors.dart'; // Iconsax package

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4.5, // You can set the initial rating here
      itemBuilder: (context, index) => const Icon(
        Iconsax.star1, // Use Iconsax.star1 for the stars
        color: AppColor.primary, // Use your custom primary color
      ),
      itemCount: 5, // Display 5 stars
      itemSize: 30.0, // Adjust the size of the stars
      direction: Axis.horizontal, // Display the stars horizontally
    );
  }
}
