import 'package:flutter/material.dart';
import 'package:text_processing_app/my_home_page.dart';
import 'package:text_processing_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: MaterialTheme.darkScheme().toColorScheme(),
        ),
      home: const MyHomePage(),
    );
  }
}
