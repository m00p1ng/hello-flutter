import 'package:flutter/material.dart';

class Cat extends StatelessWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  Image build(context) {
    return Image.network(
      'https://i.imgur.com/QwhZRyL.png',
    );
  }
}
