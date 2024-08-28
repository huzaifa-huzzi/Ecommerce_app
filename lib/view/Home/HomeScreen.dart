import 'package:ecommerece_app/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerece_app/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerece_app/utils/constants/Colors.dart';
import 'package:flutter/material.dart';



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

