import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ins_clone/constants/colors.dart';
import 'package:ins_clone/features/onboarding/widgets/auth_button.dart';
import 'package:ins_clone/features/onboarding/widgets/auth_layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLayout(
        children: [
          AuthButton(
            text: "Create New Account",
            onTap: () {
              GoRouter.of(context).push('/create-account');
            },
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => GoRouter.of(context).push('/login'),
            child: const Text(
              "Log in",
              style: TextStyle(
                color: InsColors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
