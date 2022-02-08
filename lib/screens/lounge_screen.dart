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
      appBar: AppBar(
        title: // Lounge
            const Text(
          "Lounge",
          style: TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.w300,
            fontFamily: "Montserrat",
            fontStyle: FontStyle.normal,
            fontSize: 36.0,
          ),
          textAlign: TextAlign.left,
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          Divider(
            indent: 32,
            endIndent: 30,
            thickness: 1,
            color: Theme.of(context).textTheme.bodyText1!.color,
          ),
        ],
      ),
    );
  }
}
