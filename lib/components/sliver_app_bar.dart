import 'package:flutter/material.dart';
import 'package:m_s_food/pages/cart_page.dart';

class MsFSliverAppBar extends StatelessWidget {
  const MsFSliverAppBar({
    super.key, 
    required this.child, 
    required this.title,
  });

  final Widget child;
  final  Widget title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: false,
      actions: [
        // Cart btn
        IconButton(onPressed: () {
          // Navigate to Cart page
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage(),
          ),
          );
        }, 
        icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("MySoko Food"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}