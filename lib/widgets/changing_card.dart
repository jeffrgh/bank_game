import 'dart:async';

import 'package:flutter/material.dart';

import 'deck.dart';

class ChangingCard extends StatefulWidget {
  List deck;

  ChangingCard({Key? key, required this.deck}) : super(key: key);

  @override
  State<ChangingCard> createState() => ChangingCardState();
}

class ChangingCardState extends State<ChangingCard> {
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
        widget.deck.isEmpty
            ? 'Deck is empty'
            : Deck()
                    .interpreter[widget.deck.first]!
                    .cardType
                    .toString()
                    .substring(9) +
                ' of ' +
                Deck()
                    .interpreter[widget.deck.first]!
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
