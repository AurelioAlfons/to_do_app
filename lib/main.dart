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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 96, 92, 191),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 108, 4, 255),
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
              'Aurelio Todo',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 11, 56),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(25),
            child: const Column(
              children: [
                Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // Use SizedBox to add a space
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 80,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
