import 'package:chapter_1_advanced_flutter/screens/1.4%20Provider%20&%20Change%20Theme%20using%20Provider/modal/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: Text(
          "Counter App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context,listen: true).cout.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context,listen: false).incrmnet();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
