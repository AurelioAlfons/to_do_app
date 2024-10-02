// navigation.dart
import 'package:flutter/material.dart';

Widget buildBottomNavBar(int currentIndex, Function(int) onTap) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: onTap,
    backgroundColor: const Color(0xFF6C04FF),
    selectedItemColor: Colors.yellow,
    unselectedItemColor: Colors.white.withOpacity(0.7),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.flash_on),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  );
}
