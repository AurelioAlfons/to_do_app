// Author: Aurelio Hevi Alfons
// Simple To Do App

import 'package:flutter/material.dart';

// Void => Returns nothing
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove debug banner
      debugShowCheckedModeBanner: false,

      // Scaffold layout
      home: Scaffold(
        // Bg Color
        backgroundColor: const Color.fromARGB(255, 96, 92, 191),

        // AppBar
        appBar: AppBar(
          backgroundColor: const Color(0xFF6C04FF),
          shadowColor: Colors.black,
          elevation: 10,
          // Put an icon on the left (leading)
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 28,
          ),
          // Put an icon on the left (actions)
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 28,
                ))
          ],
          title: const Center(
            child: Text(
              '🐶Doggies Gallery🐲',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
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
                  color: Colors
                      .transparent, // Ensure the container itself has no background color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.11),
                      blurRadius: 60,
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                      20), // Match the border radius of the TextField
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors
                        .white, // Set the background of the TextField itself
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)), // Same border radius
                      borderSide:
                          BorderSide.none, // Remove the default border outline
                    ),
                    hoverColor: Colors.white,
                    hintText: 'Search Items',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 69, 69, 69),
                    ),
                    // Search Icon
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Test out the list view
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/icon/dog.png'),
                        fit: BoxFit.cover),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
              ),

              // 2 Rows (left & right)
              Row(
                children: [
                  // 1st Row
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      children: [
                        //
                        // #1 box
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        // Space
                        const SizedBox(
                          height: 30,
                        ),
                        //
                        // // #2 box
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        // Space
                        const SizedBox(
                          height: 30,
                        ),
                        //
                        // #3 box
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        // Space
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),

                  // 2nd Row
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      children: [
                        //
                        // #4 box
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        // Space
                        const SizedBox(
                          height: 30,
                        ),
                        //
                        // #5 box
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        // Space
                        const SizedBox(
                          height: 30,
                        ),
                        //
                        // #6 box
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        // Space
                        const SizedBox(
                          height: 10,
                        ),
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
          backgroundColor:
              const Color(0xFF6C04FF), // Change this to your preferred color
          selectedItemColor: Colors.yellow, // Color for the selected item
          unselectedItemColor:
              Colors.white.withOpacity(0.7), // Color for the unselected items
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
      ),
    );
  }
}
