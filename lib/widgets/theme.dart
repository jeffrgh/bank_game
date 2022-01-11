import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier {
  static bool _isLight = true;
  ThemeMode currentTheme() {
    return _isLight ? ThemeMode.light : ThemeMode.dark;
  }

  void switchTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }
}
