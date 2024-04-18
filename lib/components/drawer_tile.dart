import 'package:flutter/material.dart';
class MsFDrawerTile extends StatelessWidget {
  const MsFDrawerTile({
    super.key, 
    required this.text, 
    this.icon, 
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final void Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
            onTap: onTap,
      ),
    );
  }
}