import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const TargetGame());
}

class TargetGame extends StatelessWidget {
  const TargetGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Click',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
