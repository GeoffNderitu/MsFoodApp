import 'package:flutter/material.dart';
import 'package:m_s_food/components/current_location.dart';
import 'package:m_s_food/components/description_box.dart';
import 'package:m_s_food/components/drawer.dart';
import 'package:m_s_food/components/sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MsFDrawer(),
      body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) => [MsFSliverAppBar(
        title: const Text("Title Here"),
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
      body: Container(
        color: Colors.blueGrey,
      ),
      ),
    );
  }
}