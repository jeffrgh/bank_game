// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './roomscreen.dart';
import '../screens/settingscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.068,
            ),
            child: Center(
              child: Text(
                'Bank Card',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Theme.of(context).textTheme.bodyText1!.color,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          Center(
            child: Text(
              'The game of luck',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 16.25,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
            ),
            child: Image(
              image: const AssetImage(
                'assets/Images/Title_Cards.png',
              ),
              fit: BoxFit.scaleDown,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.46,
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.lightBlue.shade300,
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              child: Text(
                'SINGLE PLAYER',
                style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RoomScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    side: BorderSide(
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).canvasColor,
                ),
                foregroundColor: MaterialStateProperty.all(
                  Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
              child: const Text(
                'MULTI PLAYER',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Align(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.settings,
              ),
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
