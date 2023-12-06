import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromARGB(255, 192, 112, 206),
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(Icons.home, 0),
          buildNavItem(Icons.photo_camera_rounded, 1),
          buildNavItem(Icons.library_music, 2),
          buildNavItem(Icons.info, 3),
          buildNavItem(Icons.settings, 4),
        ],
      ),
    );
  }

  Widget buildNavItem(IconData icon, int index) {
    return index == currentIndex
        ? FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 88, 199, 152),
            onPressed: () => onTap(index),
            child: Icon(icon, size: 24, color: Colors.black),
            elevation: 10.0,
            shape: CircleBorder(),
          )
        : IconButton(
            icon: Icon(icon, size: 24, color: Colors.black),
            onPressed: () => onTap(index),
          );
  }
}
