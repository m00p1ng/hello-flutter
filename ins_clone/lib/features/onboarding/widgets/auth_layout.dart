import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, this.children});
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 80,
                  ),
                  const SizedBox(height: 20),
                  ...?children,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
