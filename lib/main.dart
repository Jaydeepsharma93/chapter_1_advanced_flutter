import 'package:chapter_1_advanced_flutter/screens/1.4%20Provider%20&%20Change%20Theme%20using%20Provider/modal/provider.dart';
import 'package:chapter_1_advanced_flutter/screens/1.4%20Provider%20&%20Change%20Theme%20using%20Provider/view/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => CounterProvider(),
    child: const MyApp())
  );
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
      home: const CounterApp(),
    );
  }
}
