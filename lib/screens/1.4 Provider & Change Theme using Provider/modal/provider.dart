import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int cout = 0;

  void incrmnet() {
    cout += 1;
    notifyListeners();
  }

  bool isLight = false;

  void themeChange(value) {
    isLight = value;
    notifyListeners();
  }
}
