import 'package:flutter/material.dart';

import '../components/buttons.dart';
import '../components/textfields.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, this.onTap});

  final void Function()? onTap;
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
          Text("First, Let's Create Your Account",
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
            const SizedBox(height: 10),

          // Confrim Pass Section
          MsFTextField(
            controller: confirmPasswordController,
            hintText: "Confirm Password", 
            obscureText: true,
            ),
            const SizedBox(height: 25),
          // Create account Btn
          MsFButton(text: "Create Account", onTap: () {}),

          const SizedBox(height: 25),
          // Log In Section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account ?", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Log In Here", 
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