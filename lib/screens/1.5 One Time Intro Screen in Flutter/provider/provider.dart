import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier{
   bool isChecke = false;
   Future<void> onPress () async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool('viewed', true);
      notifyListeners();
   }
   Future<void> getValues() async {
      SharedPreferences preferences = await SharedPreferences.getInstance();

      isChecke = preferences.getBool('viewed') ?? false;
      notifyListeners();
   }

   IntroProvider() {
      getValues();
   }
}