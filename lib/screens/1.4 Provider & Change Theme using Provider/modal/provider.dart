import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier
{
  int cout = 0;
  void incrmnet(){
    cout += 1;
    notifyListeners();
  }
}