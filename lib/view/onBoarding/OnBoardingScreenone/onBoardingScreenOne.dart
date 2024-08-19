import 'package:ecommerece_app/utils/Devics/DeviceUtils.dart';
import 'package:ecommerece_app/utils/constants/sizes.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:ecommerece_app/view/onBoarding/OnBoardingScreenone/Widgets/FloatingActionButtonWidget.dart';
import 'package:ecommerece_app/view/onBoarding/OnBoardingScreenone/Widgets/OnBoardingScreenOneWidget.dart';
import 'package:ecommerece_app/view/onBoarding/OnBoardingScreenone/Widgets/smoothPageIndicatorWidget.dart';
import 'package:flutter/material.dart';


class OnBoardingScreenOne extends StatefulWidget {
  const OnBoardingScreenOne({super.key});

  @override
  State<OnBoardingScreenOne> createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
           // Horizontal Scrollable Pages
         PageView(
           children:
                [
                  OnBoardingScreenOneWidget(title: TextSelector.onBoardingTitle1, image: 'assets/images/delivery.gif.gif', subTitle: TextSelector.onBoardingSubTitle1),
                  OnBoardingScreenOneWidget(title: TextSelector.onBoardingTitle3, image: 'assets/images/scene.gif', subTitle: TextSelector.onBoardingSubTitle3),
                  OnBoardingScreenOneWidget(title: TextSelector.onBoardingTitle2, image: 'assets/images/payment.gif', subTitle: TextSelector.onBoardingSubTitle2)
                ],
         ),
           // skip Button 
          Positioned(
            top: DeviceUtils.getAppBarHeight(),
              right:  Sizes.defaultSpace,
              child: TextButton(onPressed: (){

              }, child:const  Text('skip',))
          ),
          // Dot NAvigtion
        const  SmoothPageIndicatorWidget(),
           // CircularButton
        const  FloatingActionButtonWidget()
        ],
      ),
    );

  }
}


