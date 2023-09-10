import 'package:flutter/material.dart';
import 'package:ins_clone/constants/colors.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    this.onTap,
    this.disabled = false,
  });
  final String text;
  final Function? onTap;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => disabled ? null: onTap?.call(),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Opacity(
          opacity: disabled ? 0.5: 1,
          child: Container(
            decoration: const BoxDecoration(
              color: InsColors.blue,
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: const Text(
              "Create New Account",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
