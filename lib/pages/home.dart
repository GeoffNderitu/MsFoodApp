import 'package:flutter/material.dart';
import 'package:m_s_food/components/current_location.dart';
import 'package:m_s_food/components/description_box.dart';
import 'package:m_s_food/components/drawer.dart';
import 'package:m_s_food/components/sliver_app_bar.dart';
import 'package:m_s_food/components/tab_bar.dart';
import 'package:m_s_food/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MsFDrawer(),
      body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) => [MsFSliverAppBar(
        title: MsFTabBar(tabController: _tabController),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              indent: 25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.secondary,
            ),
            // Current Location Section
            const CurrentLocation(),
            // Desc Box
            const DescriptionBox(),
          ],
        ),
        ),
      ],
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) =>
            Text("First Tab items"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) =>
            Text("Second Tab items"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) =>
            Text("Third Tab items"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) =>
            Text("Fourth Tab items"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) =>
            Text("Fifth Tab items"),
          ),
        ],
      ),
      ),
    );
  }
}