import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'config.dart';

class MyTheme extends ChangeNotifier {
  static bool _isLight = true;
  MyTheme() {
    if (box!.containsKey('currentTheme')) {
      _isLight = box!.get('currentTheme');
    } else {
      box!.put(
        'currentTheme',
        _isLight,
      );
    }
  }
  ThemeMode currentTheme() {
    return _isLight ? ThemeMode.light : ThemeMode.dark;
  }

  void switchTheme() {
    _isLight = !_isLight;
    box!.put(
      'currentTheme',
      _isLight,
    );
    notifyListeners();
  }
}
