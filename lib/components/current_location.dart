import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  void openLocationsearchBox(BuildContext context){
    showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: const Text("Your Location"),
      content: const TextField(decoration: InputDecoration(hintText: "Search address..."),
      ),
      actions: [
        // Cancel button
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        // save Buton
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Save"),
        ),
      ],
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now", 
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              ),
              ),
          GestureDetector(
            onTap: () => openLocationsearchBox(context),
            child: Row(
              children: [
                // address
                Text(
                  "09746 Nairobi", 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    ),
                    ), 
                // Drop-down menu section
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}