// lib/screens/Home.dart
import 'package:flutter/material.dart';
import 'package:score_sonification/screens/about_us.dart';
import 'package:score_sonification/screens/dashboard.dart';
import 'package:score_sonification/screens/library.dart';
import 'package:score_sonification/screens/settings.dart';
import 'package:score_sonification/screens/upload_photo.dart';
import 'package:score_sonification/themes/themes.dart';
import 'package:score_sonification/widgets/bottom_bar.dart';
import 'package:score_sonification/widgets/top_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentScreenIndex = 0;
  bool _isDarkMode = false;

  void _onItemTapped(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
  }

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeManager.getDarkTheme() : ThemeManager.getLightTheme(),
      home: Scaffold(
        appBar: TopBar(
          currentScreenIndex: _currentScreenIndex,
          onThemeToggle: _toggleTheme,
          isDarkMode: _isDarkMode,
        ),
        body: _buildBody(),
        bottomNavigationBar: BottomBar(
          currentIndex: _currentScreenIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentScreenIndex) {
      case 0:
        return Dashboard();
      case 1:
        return UploadPhoto();
      case 2:
        return Library();
      case 3:
        return AboutUs();
      case 4:
        return Settings();
      default:
        throw Exception("Invalid screen index");
    }
  }
}
