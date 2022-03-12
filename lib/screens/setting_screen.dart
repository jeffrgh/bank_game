import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/config.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const routeName = '/settings-screen';

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
      backgroundColor: currentTheme.currentTheme() == ThemeMode.light
          ? const Color(0xFFE5E5E5)
          : const Color(0xFF3C3C3B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Theme.of(context).textTheme.bodyText1!.color,
            endIndent: MediaQuery.of(context).size.width * 0.05,
            indent: MediaQuery.of(context).size.width * 0.052,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
            ),
            child: Row(
              children: [
                CupertinoSwitch(
                  value: darkMode ? true : false,
                  onChanged: (value) {
                    setState(() {
                      currentTheme.switchTheme();
                      darkMode = value;
                    });
                  },
                  activeColor: const Color(0xff65c8d0),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
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
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height >= 800
                ? MediaQuery.of(context).size.height * 0.77
                : MediaQuery.of(context).size.height * 0.69 - 6,
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
            ),
            color: Theme.of(context).textTheme.bodyText1!.color,
            iconSize: MediaQuery.of(context).size.height * 0.06,
          ),
        ],
      ),
    );
  }
}
