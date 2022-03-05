import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/card.dart';

class SinglePlyr extends StatefulWidget {
  const SinglePlyr({Key? key}) : super(key: key);

  @override
  _SinglePlyrState createState() => _SinglePlyrState();
}

class _SinglePlyrState extends State<SinglePlyr> {
  List player1Deck = [];
  List aIDeck = [];
  List originalDeck = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51,
    52,
  ];
  Map interpreter = {
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.one,
    ): 1,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.two,
    ): 2,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.three,
    ): 3,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.four,
    ): 4,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.five,
    ): 5,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.six,
    ): 6,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.seven,
    ): 7,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.eight,
    ): 8,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.nine,
    ): 9,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.ten,
    ): 10,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.jack,
    ): 11,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.queen,
    ): 12,
    PlayingCard(
      cardSuit: CardSuit.spades,
      cardType: CardType.king,
    ): 13,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.one,
    ): 14,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.two,
    ): 15,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.three,
    ): 16,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.four,
    ): 17,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.five,
    ): 18,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.six,
    ): 19,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.seven,
    ): 20,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.eight,
    ): 21,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.nine,
    ): 22,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.ten,
    ): 23,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.jack,
    ): 24,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.queen,
    ): 25,
    PlayingCard(
      cardSuit: CardSuit.clubs,
      cardType: CardType.king,
    ): 26,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.one,
    ): 27,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.two,
    ): 28,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.three,
    ): 29,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.four,
    ): 30,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.five,
    ): 31,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.six,
    ): 32,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.seven,
    ): 33,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.eight,
    ): 34,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.nine,
    ): 35,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.ten,
    ): 36,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.jack,
    ): 37,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.queen,
    ): 38,
    PlayingCard(
      cardSuit: CardSuit.hearts,
      cardType: CardType.king,
    ): 39,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.one,
    ): 40,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.two,
    ): 41,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.three,
    ): 42,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.four,
    ): 43,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.five,
    ): 44,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.six,
    ): 45,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.seven,
    ): 46,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.eight,
    ): 47,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.nine,
    ): 48,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.ten,
    ): 49,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.jack,
    ): 50,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.queen,
    ): 51,
    PlayingCard(
      cardSuit: CardSuit.diamonds,
      cardType: CardType.king,
    ): 52,
  };

  Random rng = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              child: ElevatedButton(
                child: const Text('Player 1'),
                onPressed: () {
                  setState(() {
                    originalDeck.shuffle();
                    print(originalDeck);
                    player1Deck = originalDeck.sublist(0, 26);
                    print(player1Deck);
                    aIDeck = originalDeck.sublist(26, 52);
                    print(aIDeck);
                  });
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.2,
              color: Colors.grey,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
