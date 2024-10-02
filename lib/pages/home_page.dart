// home.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/pages/explore_page.dart';
import 'package:to_do_app/pages/home_content.dart'; // Import the HomeContent widget
import 'package:to_do_app/widget/navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Define the list of pages
  final List<Widget> _pages = [
    const HomeContent(), // Use HomeContent from its own file
    const ExplorePage(),
  ];

  void _onTap(int index) {
    // Update the current index when a bottom nav item is tapped
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6C04FF),
        shadowColor: Colors.black,
        elevation: 10,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 28,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
        title: const Center(
          child: Text(
            '🐶Doggies Gallery🐲',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      // Switch between pages based on _currentIndex
      body: _pages[_currentIndex],

      // Bottom NavBar
      bottomNavigationBar: buildBottomNavBar(_currentIndex, _onTap),
    );
  }
}
