import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData getLightTheme() {
    return ThemeData(
      primarySwatch: Colors.purple,
      brightness: Brightness.light,
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      primarySwatch: Colors.purple,
      brightness: Brightness.dark,
    );
  }
}
