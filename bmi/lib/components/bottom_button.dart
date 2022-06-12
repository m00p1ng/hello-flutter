import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final void Function() onTap;
  final String title;

  const BottomButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        /* padding: const EdgeInsets.only(bottom: 20.0), */
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(title, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
