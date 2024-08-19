import 'package:ecommerece_app/utils/HelperFunction/HelperFunction.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';


class OnBoardingScreenOne extends StatefulWidget {
  const OnBoardingScreenOne({super.key});

  @override
  State<OnBoardingScreenOne> createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1 ;
    final width = MediaQuery.sizeOf(context).width * 1 ;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Horizontal Scrollable pages
              PageView(
                children: [
                  Column(
                    children: [
                      Image(
                          width: width * 0.8,
                          height:  height * .06,
                          image:const  AssetImage('assets/images/delivery.gif.gif')
                      ),
                      Text(TextSelector.onBoardingTitle1,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                     const  SizedBox(height: Sizes.spaceBtwItems ,),
                      Text(TextSelector.onBoardingTitle1,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,)
                    ],
                  )
                ],
              )

            ],
          )
        ],
      ),

    );
  }
}
