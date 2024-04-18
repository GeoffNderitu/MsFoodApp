import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:m_s_food/components/buttons.dart';
import 'package:m_s_food/components/textfields.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key, 
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    // authentication and navigation logic here
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Icon(Icons.lock_open_rounded,
          size: 100,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          // Message and App Slogan
          Text("Welcome To MySoko Food App",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          // email section
          MsFTextField(
            controller: emailController,
            hintText: "Email", 
            obscureText: false,
            ),

            const SizedBox(height: 10),
          // Pass Section
          MsFTextField(
            controller: passwordController,
            hintText: "Password", 
            obscureText: true,
            ),
            const SizedBox(height: 25),
          // sign in Btn
          MsFButton(text: "Sign In", onTap: login),

          const SizedBox(height: 25),
          // Register Section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ?", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register Here", 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}