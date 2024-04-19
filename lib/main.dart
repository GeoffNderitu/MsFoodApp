import 'dart:js';

import 'package:flutter/material.dart';
import 'package:m_s_food/auth/login_or_register.dart';
import 'package:m_s_food/models/restaurant.dart';
import 'package:m_s_food/pages/login_page.dart';
import 'package:m_s_food/pages/register.dart';
import 'package:provider/provider.dart';
import 'themes/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      // Theme Provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()
      ),
      // Restaurant Provider
      ChangeNotifierProvider(create: (context) => Restaurant()
      ),
    ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
