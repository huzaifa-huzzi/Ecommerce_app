import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:ecommerece_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CurvedEdges(),
              child: Container(
                color: AppColor.primary,
                padding:const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top: -150,right: -230,child: CircularContainer(backgroundColor: AppColor.textWhite.withOpacity(0.1),)),
                      Positioned(top: 100,right: -310,child: CircularContainer(backgroundColor: AppColor.textWhite.withOpacity(0.1))),
                      AppBar(
                        title: Column(
                          children: [
                            Text(TextSelector.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColor.grey),),
                            Text(TextSelector.homeAppbarSubtitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),)
                          ],
                        ),
                        actions: [
                          Stack(
                            children: [
                              IconButton(onPressed: (){}, icon:const Icon(Iconsax.shopping_bag,)),
                              Positioned(
                                right: 0,
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: AppColor.black,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColor.textWhite,fontSizeFactor: 0.8),),
                                    ),
                                  )
                              ),
                            ],
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

