import 'package:flutter/material.dart';

import '../../utils/Global variable.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          width: 400,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text("Yo Man!",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),),
              Text("It's a simple example of\ndark theme",textAlign:TextAlign.center,style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).secondaryHeaderColor,
                letterSpacing: 1
              ),),
              Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    isDark = false;
                  });
                },
                child: Container(
                  height: 100,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: Text("Light Theme",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  setState(() {
                    isDark = true;
                  });
                },
                child: Container(
                  height: 100,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: Text("Dark Theme",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
