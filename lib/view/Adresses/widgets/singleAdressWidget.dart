import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class SingleAddressesWidget extends StatelessWidget {
  final bool selectedAddress;

  const SingleAddressesWidget({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {
    final bool darkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: selectedAddress
            ? Colors.blue.withOpacity(0.5)
            : Colors.transparent,
        border: Border.all(
          color: selectedAddress ? Colors.blue : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(10), // Similar to rounded corners
      ),
      margin: const EdgeInsets.only(bottom: 16), // Adjust the spacing as per need
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            child: Icon(
              selectedAddress ? Icons.check_circle : null,
              color: selectedAddress
                  ? (darkMode ? Colors.white : Colors.black)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('John doe',
                 maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              const SizedBox(height: Sizes.sm /2,),
              const Text('(+123) 456 7890',maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: Sizes.sm /2,),
              const Text('823356 Timmy Coves,South Liana,86775,USA',
               softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
