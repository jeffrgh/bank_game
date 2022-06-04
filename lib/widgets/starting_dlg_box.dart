import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './deck.dart';

void startGame(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Start Game'),
      content: const Text('Press the blue card to start the game'),
      actions: <Widget>[
        ElevatedButton(
          child: const Text('Ok'),
          onPressed: () {
            if (kDebugMode) {
              print(Deck().originalDeck);
            }
            Navigator.of(context).pop();
          },
        )
      ],
    ),
  );
}
