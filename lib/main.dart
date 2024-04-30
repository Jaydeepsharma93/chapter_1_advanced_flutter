import 'package:chapter_1_advanced_flutter/screens/1.4%20Provider%20&%20Change%20Theme%20using%20Provider/modal/provider.dart';
import 'package:chapter_1_advanced_flutter/screens/1.4%20Provider%20&%20Change%20Theme%20using%20Provider/view/changetheme.dart';
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
      themeMode: Provider.of<CounterProvider>(context,listen: true).isLight?ThemeMode.dark:ThemeMode.light,
      theme: ThemeData(
          brightness: Brightness.light),
      darkTheme: ThemeData(
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const ChangeTheme(),
    );
  }
}
