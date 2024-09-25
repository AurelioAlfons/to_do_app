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
        backgroundColor: Colors.orange,
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 14, 48),
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
