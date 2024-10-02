// main.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp = Widget that sets up app
    // Structure and Navigation
    return const MaterialApp(
      // Remove the Debug Banner Flag
      debugShowCheckedModeBanner: false,
      // home: = Sets the main page when running the app
      home: HomePage(),
    );
  }
}
