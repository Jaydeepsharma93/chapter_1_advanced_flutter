import 'package:chapter_1_advanced_flutter/screens/1.1%20Switch%20Dark%20Theme%20to%20Light%20Theme/1.1.dart';
import 'package:chapter_1_advanced_flutter/screens/1.2%20Create%20Registration%20Page%20using%20Stepper%20Widget/1.2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
          brightness: Brightness.light,
          // scaffoldBackgroundColor: Colors.blue,
          primaryColor: Colors.white,
          secondaryHeaderColor: Colors.black45),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          // scaffoldBackgroundColor: Colors.red,
          primaryColor: Colors.white12,
          secondaryHeaderColor: Colors.white38),
      debugShowCheckedModeBanner: false,
      initialRoute: '/stepper2',
      routes: {
        // '/': (context) => const ThemeChange(),
        '/stepper' : (context) => const StepperWidget(),
        '/stepper2' : (context) => const Stepper_second()
      },
    );
  }
}
