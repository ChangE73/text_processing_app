import 'package:flutter/material.dart';
import 'package:text_processing_app/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
