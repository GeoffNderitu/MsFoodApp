import 'package:flutter/material.dart';
import 'package:m_s_food/models/food.dart';

class MsFTabBar extends StatelessWidget {
  const MsFTabBar({
    super.key, 
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
        ),
    );
  }
}