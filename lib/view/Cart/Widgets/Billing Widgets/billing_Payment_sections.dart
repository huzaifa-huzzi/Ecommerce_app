import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';



class BillingPAymentSections extends StatelessWidget {
  const BillingPAymentSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         /// Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text(' \$256.0',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems /2,),
         ///  shipping fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fees',style: Theme.of(context).textTheme.bodyMedium,),
            Text(' \$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems /2,),
        /// Tax Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fees',style: Theme.of(context).textTheme.bodyMedium,),
            Text(' \$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems /2,),
         /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text(' \$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
      ],
    );
  }
}
