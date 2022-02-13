import 'package:flutter/material.dart';

import '../widgets/card.dart';

class SinglePlyr extends StatefulWidget {
  const SinglePlyr({Key? key}) : super(key: key);

  @override
  _SinglePlyrState createState() => _SinglePlyrState();
}

class _SinglePlyrState extends State<SinglePlyr> {
  List<PlayingCard> player1 = [];
  List<PlayingCard> aI = [];
  List<PlayingCard> originalDeck = [];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Single Player'),
      ),
    );
  }
}
