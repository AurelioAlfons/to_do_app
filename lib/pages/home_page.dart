// home.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/pages/explore_page.dart';
import 'package:to_do_app/widget/navigation.dart';

// Create class HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Define the list of pages
  // ignore: unused_field
  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
  ];

  void _onTap(int index) {
    // Correct the setState syntax
    setState(() {
      _currentIndex = index;
      // Add any navigation logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      // Bg Color
      backgroundColor: const Color.fromARGB(255, 96, 92, 191),

      // AppBar
      appBar: AppBar(
        backgroundColor: const Color(0xFF6C04FF),
        shadowColor: Colors.black,
        elevation: 10,
        // Left Button
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 28,
          ),
        ),
        // Right Icon Button
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

      // Body => SearchField, Containers
      body: SingleChildScrollView(
        // Added SingleChildScrollView to prevent layout issues
        child: Column(
          children: [
            //
            // SearchField
            //
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 60,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search Items',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 69, 69, 69),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            // Create distance space
            const SizedBox(
              height: 20,
            ),

            // Main image container
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/icon/dog.png'),
                  fit: BoxFit.cover,
                ),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            // 2 Rows (left & right)
            // 2 Rows (left & right)
            Row(
              children: [
                // 1st Column
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: [
                      // #1 box
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Evee1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // #2 box
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Evee2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // #3 box
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Evee3.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),

                // 2nd Column
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: [
                      // #4 box
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Billy1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // #5 box
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Billy2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // #6 box
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Billy3.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ], // End of column children
        ),
      ),

      // Bottom NavBar
      // Here we call the buildBottomNavBar widget
      // From the navigation.dart
      bottomNavigationBar: buildBottomNavBar(_currentIndex, _onTap),
    );
  }
}
