// home_content.dart
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 96, 92, 191),
        child: Column(
          children: [
            // SearchField
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
            const SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}
