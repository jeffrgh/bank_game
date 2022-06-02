import 'dart:async';

import 'package:flutter/material.dart';

class DeckLen extends StatefulWidget {
  List deck;

  DeckLen({Key? key, required this.deck}) : super(key: key);

  @override
  State<DeckLen> createState() => _DeckLenState();
}

class _DeckLenState extends State<DeckLen> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        print(widget.deck.length);
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.deck.isEmpty ? '' : widget.deck.length.toString(),
      style: TextStyle(
        color: Theme.of(context).textTheme.bodyText1!.color,
        fontSize: MediaQuery.of(context).size.height * 0.024,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
