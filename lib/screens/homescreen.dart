import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(15, 237, 237, 237),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 19.5,
            ),
            child: Center(
              child: Text(
                'Bank Card',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.white,
            indent: 50,
            endIndent: 50,
          ),
          const Center(
            child: Text(
              'The game of luck',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image(
            image: const NetworkImage(
              'https://media.discordapp.net/attachments/912671770341949470/925739440071135242/Asset_64x.png?width=600&height=677',
              scale: 1,
            ),
            fit: BoxFit.scaleDown,
            width: MediaQuery.of(context).size.width,
            height: 350,
          ),
        ],
      ),
    );
  }
}
