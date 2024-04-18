import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Delivery Fee
            Column(
              children: [
                Text(
                  "Ksh 150", 
                  style: myPrimaryTextStyle,
                  ),
                Text(
                  "Delivery Fee",
                   style: mySecondaryTextStyle,
                   ),
              ],
            ),
            // Delivery time
            Column(
              children: [
                Text(
                  "15-30 mins", 
                  style: myPrimaryTextStyle,
                  ),
                Text(
                  "Delivery Time", 
                  style: mySecondaryTextStyle,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}