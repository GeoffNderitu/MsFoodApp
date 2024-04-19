import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  // List of Food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Cheese Burger", 
      description:"A good and well flavoured burger with plenty of cheese and flavor", 
      imagePath: "lib/images/burgers/burgerimage.jpeg", 
      price: 1500.00, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 100.00),
        Addon(name: "Extra Patty", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
      Food(
      name: "Cheese Burger", 
      description:"A good and well flavoured burger with plenty of cheese and flavor", 
      imagePath: "lib/images/burgers/burgerimage.jpeg", 
      price: 1500.00, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 100.00),
        Addon(name: "Extra Patty", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
      Food(
      name: "Sandwitches", 
      description:"A good and well flavoured sandwich with plenty of cheese and flavor", 
      imagePath: "lib/images/burgers/sandwiches.png", 
      price: 900.00, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 100.00),
        Addon(name: "Extra ham", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
      Food(
      name: "Burger", 
      description:"A good and well flavoured burger with plenty of cheese and flavor", 
      imagePath: "lib/images/burgers/burgerimage22.jpg", 
      price: 1700.00, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 100.00),
        Addon(name: "Extra Patty", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
    // Salads
    Food(
      name: "Salad type One", 
      description:"A good and well flavoured healthy salad that is fresh", 
      imagePath: "lib/images/salads/salad1.jpg", 
      price: 1200.00, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Brocholli", price: 100.00),
        Addon(name: "Extra Seasoning", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
      Food(
      name: "Salad type Two", 
      description:"A good and well flavoured healthy salad that is fresh", 
      imagePath: "lib/images/salads/salad2.png", 
      price: 1000.00, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Brocholli", price: 100.00),
        Addon(name: "Extra Seasoning", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
      Food(
      name: "Salad type Three", 
      description:"A good and well flavoured healthy salad that is fresh", 
      imagePath: "lib/images/salads/salad3.jpeg", 
      price: 1100.00, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Brocholli", price: 100.00),
        Addon(name: "Extra Seasoning", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
      Food(
      name: "Salad type Four", 
      description:"A good and well flavoured healthy salad that is fresh", 
      imagePath: "lib/images/salads/salad4.png", 
      price: 1200.00, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Brocholli", price: 100.00),
        Addon(name: "Extra Seasoning", price: 200.00),
        Addon(name: "Extra Lettuce", price: 100.00),
      ],
      ),
    // Sides
    Food(
      name: "Onion Rings", 
      description:"Freshly fried onion rings full of flavour", 
      imagePath: "lib/images/sides/onionrings.jpeg", 
      price: 600.00, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Extra crispy", price: 50.00),
        Addon(name: "Extra onion rings", price: 200.00),
        Addon(name: "Extra ketchup", price: 75.00),
      ],
      ),
      Food(
      name: "French Fries Type One", 
      description:"Freshly made French fries full of flavour", 
      imagePath: "lib/images/sides/fries1.png", 
      price: 600.00, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Extra crispy", price: 50.00),
        Addon(name: "Extra french fries", price: 200.00),
        Addon(name: "Extra ketchup", price: 75.00),
      ],
      ),
      Food(
      name: "French Fries Type Two", 
      description:"Freshly made French fries full of flavour", 
      imagePath: "lib/images/sides/fries2.jpg", 
      price: 600.00, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Extra crispy", price: 50.00),
        Addon(name: "Extra french fries", price: 100.00),
        Addon(name: "Extra ketchup", price: 75.00),
      ],
      ),
      Food(
      name: "Potato Wedges", 
      description:"They are oven baked and well-seasoned", 
      imagePath: "lib/images/sides/potatowedges.png", 
      price: 600.00, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Extra crispy", price: 50.00),
        Addon(name: "Extra potato wedges", price: 200.00),
        Addon(name: "Extra ketchup", price: 75.00),
      ],
      ),
    // Desserts
    Food(
      name: "Cake With Ice cream", 
      description:"Freshly baked cake with ice cream", 
      imagePath: "lib/images/desserts/cake_icecream1.png", 
      price: 500.00, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Extra ice cream", price: 150.00),
        Addon(name: "Extra Cake Slice", price: 200.00),
        Addon(name: "Extra icing", price: 170.00),
      ],
      ),
      Food(
      name: "Jello", 
      description:"Freshly made jello with strawberry syrup", 
      imagePath: "lib/images/desserts/jello1.png", 
      price: 700.00, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Extra jello", price: 150.00),
        Addon(name: "Extra fruit(strawberry)", price: 200.00),
        Addon(name: "Extra syrup", price: 170.00),
      ],
      ),
      Food(
      name: "Cake Type One", 
      description:"Freshly baked cake", 
      imagePath: "lib/images/desserts/cake2.jpg", 
      price: 500.00, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Extra Toppings", price: 150.00),
        Addon(name: "Extra Cake Slice", price: 200.00),
        Addon(name: "Extra icing", price: 170.00),
      ],
      ),
      Food(
      name: "Ice cream", 
      description:"Freshly made ice cream", 
      imagePath: "lib/images/desserts/icecream1.png", 
      price: 500.00, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Extra ice cream", price: 150.00),
        Addon(name: "Extra toppings", price: 100.00),
      ],
      ),
    // drinks
    Food(
      name: "MilkShake Type One", 
      description:"Freshly made milk shake", 
      imagePath: "lib/images/drinks/milkshake1.jpeg", 
      price: 500.00, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Toppings", price: 150.00),
      ],
      ),
      Food(
      name: "MilkShake Type Two", 
      description:"Freshly made milk shake", 
      imagePath: "lib/images/drinks/milkshake2.jpg", 
      price: 500.00, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Toppings", price: 150.00),
      ],
      ),
      Food(
      name: "MilkShake Type Three", 
      description:"Freshly made milk shake", 
      imagePath: "lib/images/drinks/milkshake3.jpeg", 
      price: 500.00, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Toppings", price: 150.00),
      ],
      ),
      Food(
      name: "Juice Type One", 
      description:"Freshly made juice", 
      imagePath: "lib/images/drinks/juice2.jpg", 
      price: 500.00, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra fruit", price: 150.00),
      ],
      ),
  ];

  /*
  
  G E T T E R S
  
   */

  List<Food> get menu => _menu;


  /* 
  
  O P E R A T I O N S 
  
  */

  // Add to cart

  // Remove from cart

  // Get total price of cart

  // Get total number of items in cart

  // Clear cart

  /* 
  
  H E L P E R S
  
   */

  // Generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
