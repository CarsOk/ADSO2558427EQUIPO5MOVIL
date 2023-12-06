import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 20,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle, color: Colors.white), label: "users"),
        BottomNavigationBarItem(icon: Icon(Icons.sports_soccer, color: Colors.white), label: "canchas"),
      ],
      selectedItemColor: Color(0xFF47B2E4),
      unselectedItemColor: Colors.white.withOpacity(0.6),
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
