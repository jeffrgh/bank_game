import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'screens/homescreen.dart';
import 'widgets/config.dart';

void main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('easyTheme');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      splashColor: const Color(0xFF3C3C3B),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    var lightMode = ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: Color(0xFFE5E5E5),
        secondary: Colors.lightBlueAccent,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Color(0xFFE5E5E5),
        onBackground: Colors.black,
        surface: Color(0xFFE5E5E5),
        onSurface: Colors.black,
      ),
      splashColor: Colors.white,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      title: 'Bank Game',
      darkTheme: darkMode,
      theme: lightMode,
      themeMode: currentTheme.currentTheme(),
    );
  }
}
