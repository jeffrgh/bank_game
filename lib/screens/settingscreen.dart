import 'package:bank_game/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/config.dart';
import '../main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const routeName = 'settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    if (currentTheme.currentTheme() == ThemeMode.dark) {
      darkMode = true;
    } else if (currentTheme.currentTheme() == ThemeMode.light) {
      darkMode = false;
    }
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.02,
            ),
            child: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Row(
            children: [
              CupertinoSwitch(
                value: darkMode ? true : false,
                onChanged: (value) {
                  setState(() {
                    currentTheme.switchTheme();
                    darkMode = value;
                  });
                },
              ),
              darkMode
                  ? const Text(
                      'Dark Mode enabled',
                    )
                  : const Text(
                      'Light Mode enabled',
                    ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.72,
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ),
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
    );
  }
}
