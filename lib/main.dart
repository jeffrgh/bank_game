import 'package:flutter/material.dart';

import './screens/homescreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      title: 'Bank Game',
      theme: ThemeData(
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
        androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
        platform: TargetPlatform.android,
        useMaterial3: true,
        splashColor: const Color(0xFF3C3C3B),
      ),
    );
  }
}
