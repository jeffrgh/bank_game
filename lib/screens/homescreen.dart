// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './roomscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(30, 237, 237, 237),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.068,
            ),
            child: const Center(
              child: Text(
                'Bank Card',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.white,
            indent: 90,
            endIndent: 90,
          ),
          const Center(
            child: Text(
              'The game of luck',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.25,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Image(
              image: const NetworkImage(
                'https://media.discordapp.net/attachments/912671770341949470/925739440071135242/Asset_64x.png?width=600&height=677',
                scale: 1,
              ),
              fit: BoxFit.scaleDown,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.48,
            ),
          ),
          SizedBox(
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              color: Colors.blue.shade300,
              child: const Text(
                'SINGLE PLAYER',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.065,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RoomScreen(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              color: const Color.fromARGB(37, 237, 237, 237),
              highlightColor: Colors.white,
              child: const Text(
                'MULTI PLAYER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.072,
          ),
          Align(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ),
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
