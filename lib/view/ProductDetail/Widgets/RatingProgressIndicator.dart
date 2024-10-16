import 'package:ecommerece_app/utils/Devics/DeviceUtils.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/Colors.dart';


 class RatingProgressIndicator extends StatelessWidget {
    const RatingProgressIndicator({
    super.key,
    });

    @override
    Widget build(BuildContext context) {
    return Row(
    children: [
    Expanded(flex: 3,child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
    Expanded(
    flex: 7,
    child: Column(
    children: [
    Row(
    children: [
    Expanded(flex: 1,child: Text('5',style: Theme.of(context).textTheme.bodyMedium,)),
    Expanded(
    flex: 11,
    child: SizedBox(
    width: DeviceUtils.getScreenWidth() * .5,
    child: LinearProgressIndicator(
    value: 1,
    minHeight: 11,
    backgroundColor: AppColor.grey,
    borderRadius: BorderRadius.circular(7),
    valueColor: AlwaysStoppedAnimation(AppColor.primary),

    ),
    ),
    ),

    ],
    ),
      Row(
        children: [
          Expanded(flex: 1,child: Text('4',style: Theme.of(context).textTheme.bodyMedium,)),
          Expanded(
            flex: 11,
            child: SizedBox(
              width: DeviceUtils.getScreenWidth() * .5,
              child: LinearProgressIndicator(
                value: 0.8,
                minHeight: 11,
                backgroundColor: AppColor.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: AlwaysStoppedAnimation(AppColor.primary),

              ),
            ),
          ),

        ],
      ),
      Row(
        children: [
          Expanded(flex: 1,child: Text('3',style: Theme.of(context).textTheme.bodyMedium,)),
          Expanded(
            flex: 11,
            child: SizedBox(
              width: DeviceUtils.getScreenWidth() * .5,
              child: LinearProgressIndicator(
                value: 0.6,
                minHeight: 11,
                backgroundColor: AppColor.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: AlwaysStoppedAnimation(AppColor.primary),

              ),
            ),
          ),

        ],
      ),
      Row(
        children: [
          Expanded(flex: 1,child: Text('3',style: Theme.of(context).textTheme.bodyMedium,)),
          Expanded(
            flex: 11,
            child: SizedBox(
              width: DeviceUtils.getScreenWidth() * .5,
              child: LinearProgressIndicator(
                value: 0.4,
                minHeight: 11,
                backgroundColor: AppColor.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: AlwaysStoppedAnimation(AppColor.primary),

              ),
            ),
          ),

        ],
      ),
      Row(
        children: [
          Expanded(flex: 1,child: Text('1',style: Theme.of(context).textTheme.bodyMedium,)),
          Expanded(
            flex: 11,
            child: SizedBox(
              width: DeviceUtils.getScreenWidth() * .5,
              child: LinearProgressIndicator(
                value: 0.2,
                minHeight: 11,
                backgroundColor: AppColor.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: AlwaysStoppedAnimation(AppColor.primary),

              ),
            ),
          ),

        ],
      ),
    ],
    ),
    )
    ],
    );
    }
    }
