import 'package:flutter/material.dart';

class ExploreContent extends StatelessWidget {
  const ExploreContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 96, 92, 191),
      child: Column(
        children: [
          // Move the search field outside of the scrollable content
          _searchField(),

          // Add space between search field and content
          const SizedBox(height: 20),

          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                // Set the alignment to left start
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Category',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 150,
                    color: const Color.fromARGB(255, 36, 255, 44),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
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
      // Search field
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
    );
  }
}
