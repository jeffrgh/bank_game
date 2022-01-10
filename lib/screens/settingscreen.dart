import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lightMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Switch(
            value: lightMode,
            onChanged: (value) {
              setState(() {
                lightMode = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
