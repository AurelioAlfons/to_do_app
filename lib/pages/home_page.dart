// home.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  )
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

            const SizedBox(height: 20),

            // Test out the list view
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
            Row(
              children: [
                // 1st Row
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

                // 2nd Row
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
          ],
        ),
      ),

      // Bottom NavBar
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
