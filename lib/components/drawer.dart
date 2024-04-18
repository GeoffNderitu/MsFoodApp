import 'package:flutter/material.dart';
import 'package:m_s_food/components/drawer_tile.dart';

import '../pages/settings.dart';

class MsFDrawer extends StatelessWidget {
  const MsFDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ), 
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // Home List tile Section
          MsFDrawerTile(
            text: "H O M E", 
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // Settings List Tile Section
          MsFDrawerTile(
            text: "S E T T I N G S", 
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage(),
              )
              );
            },
          ),

          const Spacer(),
          // Log Out List Tile Section
          MsFDrawerTile(
            text: "L O G O U T", 
            icon: Icons.logout,
            onTap: () {},
          ),
          const SizedBox(height: 25.0),
        ],
      ),
    );
  }
}