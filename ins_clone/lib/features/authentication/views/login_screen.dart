import 'package:flutter/material.dart';
import 'package:ins_clone/constants/colors.dart';
import 'package:ins_clone/features/onboarding/widgets/auth_button.dart';
import 'package:ins_clone/features/onboarding/widgets/auth_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLayout(
        children: [
          TextField(
            style: const TextStyle(color: Colors.black54),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(width: 0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 15.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  width: 2,
                  color: InsColors.blue,
                ),
              ),
              hintText: 'Username',
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 10),
          TextField(
            style: const TextStyle(color: Colors.black54),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(width: 0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 15.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  width: 2,
                  color: InsColors.blue,
                ),
              ),
              hintText: 'Password',
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
            ),
            obscureText: true,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}

