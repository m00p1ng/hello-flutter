import 'package:flutter/material.dart';
import 'package:habit_tracker/constants/app_assets.dart';

Future<void> main() async {
  await AppAssets.preloadSVGs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica Neue',
      ),
    );
  }
}

