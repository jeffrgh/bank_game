import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './screens/homescreen.dart';
import 'screens/settingscreen.dart';
import 'widgets/config.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      if (kDebugMode) {
        print('Changes');
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var darkMode = ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: const Color(0xFF3C3C3B),
        onPrimary: Colors.white,
        secondary: Colors.lightBlueAccent,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: const Color(0xFF3C3C3B),
        onBackground: Colors.white,
        surface: Colors.grey[600]!,
        onSurface: Colors.white,
      ),
      androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
      platform: TargetPlatform.android,
      useMaterial3: true,
      splashColor: const Color(0xFF3C3C3B),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    var lightMode = ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Colors.lightBlueAccent,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: const Color(0xFF3C3C3B),
        onBackground: Colors.white,
        surface: Colors.grey[600]!,
        onSurface: Colors.white,
      ),
      androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
      platform: TargetPlatform.android,
      useMaterial3: true,
      splashColor: const Color(0xFF3C3C3B),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      title: 'Bank Game',
      darkTheme: darkMode,
      theme: lightMode,
      themeMode: currentTheme.currentTheme(),
      routes: {
        SettingsScreen.routeName: (context) => const SettingsScreen(),
      },
    );
  }
}
