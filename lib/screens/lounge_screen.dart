import 'package:flutter/material.dart';

class LoungeScreen extends StatefulWidget {
  const LoungeScreen({Key? key}) : super(key: key);

  @override
  _LoungeScreenState createState() => _LoungeScreenState();
}

class _LoungeScreenState extends State<LoungeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            child: const Text('Lounge'),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.035,
            ),
          ),
        ],
      ),
    );
  }
}
