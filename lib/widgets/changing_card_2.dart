import 'dart:async';

import 'package:flutter/material.dart';

import 'deck.dart';

class ChangingCard2 extends StatefulWidget {
  List deck;

  ChangingCard2({Key? key, required this.deck}) : super(key: key);

  @override
  State<ChangingCard2> createState() => ChangingCard2State();
}

class ChangingCard2State extends State<ChangingCard2> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        print(widget.deck);
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
    return Align(
      alignment: Alignment.center,
      child: Text(
        widget.deck.length <= 1
            ? 'Deck is empty'
            : Deck()
                    .interpreter[widget.deck[1]]!
                    .cardType
                    .toString()
                    .substring(9) +
                ' of ' +
                Deck()
                    .interpreter[widget.deck[1]]!
                    .cardSuit
                    .toString()
                    .substring(9),
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText1!.color,
          fontSize: MediaQuery.of(context).size.height * 0.02,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
