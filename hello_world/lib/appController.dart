import 'package:flutter/material.dart';

class Appcontroller extends ChangeNotifier {
  static Appcontroller instance = Appcontroller();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
