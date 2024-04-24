import 'package:flutter/material.dart';
import 'package:m_s_food/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      // Cart
      final userCart = restaurant.cart;

      // Scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(child: 
            ListView.builder(
              itemCount: userCart.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(userCart[index].food.name),
              ),
            ),
            )
          ],
        ),
      );
    });
  }
}