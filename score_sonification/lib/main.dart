// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/Home.dart'; // Adjust the path accordingly

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      home: Home(),
    );
  }
}
