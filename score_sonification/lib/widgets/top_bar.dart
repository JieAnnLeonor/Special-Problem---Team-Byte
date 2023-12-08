import 'package:flutter/material.dart';
import '../constant.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentScreenIndex;
  final Function() onThemeToggle;
  final bool isDarkMode;

  const TopBar({
    required this.currentScreenIndex,
    required this.onThemeToggle,
    required this.isDarkMode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      iconTheme: IconThemeData(color: Colors.black), 
      title: null,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: onThemeToggle,
            icon: Icon(
              isDarkMode ? Icons.nights_stay : Icons.wb_sunny,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
