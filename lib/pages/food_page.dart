import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:m_s_food/components/buttons.dart';
import 'package:m_s_food/models/restaurant.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';

class FoodPage extends StatefulWidget {
  FoodPage({
    super.key, 
    required this.food,
  }){
    // Initialize selcted addons to be false
     for (Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
  }
  }
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  // add to cart method
 void addToCart(Food food, Map<Addon, bool> selectedAddons) {
  List<Addon> currentlySelectedAddons = [];
  for (Addon addon in widget.food.availableAddons) {
    if (widget.selectedAddons[addon] == true) {
      currentlySelectedAddons.add(addon);
    }
  }
  context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
 }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
              // Food Img
              Image.asset(widget.food.imagePath),
              // Food name
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name, 
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                       ),
                    ),
            
                    // Food Price
                    Text(
                     "Ksh${widget.food.price}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                       ),
                      ),
            
                      const SizedBox(height: 10),
                    // Food desc
                    Text(
                      widget.food.description,
                      ),
            
                      const SizedBox(height: 10),
                      
                      Divider(color: Theme.of(context).colorScheme.secondary),
            
                      const SizedBox(height: 10),
                    // Add ons
                    Text(
                        "Add-ons", 
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary, 
                          fontSize: 16, 
                          fontWeight: FontWeight.bold,
                      ),
                      ),
                      const SizedBox(height: 10),
            
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index){
                          // Get individual addon
                          Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text("Ksh${addon.price}", 
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              // Btn(Add to Cart) 
              MsFButton(text: "Add To Cart", onTap: () => addToCart(widget.selectedAddons);
              ),
        
              const SizedBox(height: 25),
            ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}