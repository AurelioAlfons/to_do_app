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
        body: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              // ignore: avoid_unnecessary_containers
              child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                        hoverColor: Colors.white,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search item',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 10),
                  child: Column(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
