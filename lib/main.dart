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
      ),
    );
  }
}
