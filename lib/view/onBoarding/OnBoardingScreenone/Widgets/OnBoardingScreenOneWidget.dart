import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';


class OnBoardingScreenOneWidget extends StatelessWidget {
  final String image,title,subTitle;
  const OnBoardingScreenOneWidget({super.key,required this.title,required this.image,required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: PageView(
        children: [
          Column(
            children: [
              Image(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.6,
                image:  AssetImage(image),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
