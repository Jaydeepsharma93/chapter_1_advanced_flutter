import 'package:chapter_1_advanced_flutter/screens/1.1%20Switch%20Dark%20Theme%20to%20Light%20Theme/1.1.dart';
import 'package:chapter_1_advanced_flutter/utils/Global%20variable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:(isDark)?ThemeData.dark():ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const ThemeChange()
      },
    );
  }
}
