import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(CoronaMeter());
}

class CoronaMeter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


