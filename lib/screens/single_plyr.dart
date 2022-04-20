import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';
import '../widgets/config.dart';

class SinglePlyr extends StatefulWidget {
  const SinglePlyr({Key? key}) : super(key: key);
  static const routeName = '/single-player';

  @override
  _SinglePlyrState createState() => _SinglePlyrState();
}

class _SinglePlyrState extends State<SinglePlyr> {
  List player1Deck = [];
  List aIDeck = [];
  List originalDeck = [for (var i = 1; i <= 52; i++) i];
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

  @override
  Widget build(BuildContext context) {
    void startGame(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Start Game'),
          content: const Text('Press the button to start the game'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Ok'),
              onPressed: () {
                // for (var i = 0; i < 52; i++) print(intG);
                if (kDebugMode) {
                  print(originalDeck);
                }
                originalDeck.shuffle();
                player1Deck = originalDeck.sublist(0, 26);
                aIDeck = originalDeck.sublist(26);
                aIDeck.shuffle();
                player1Deck.shuffle();
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      );
    }

    Future.delayed(Duration.zero, () => startGame(context));
    return Scaffold(
      backgroundColor: currentTheme.currentTheme() == ThemeMode.light
          ? const Color(0xFFE5E5E5)
          : const Color(0xFF3C3C3B),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.085,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Text(
            'Bank Card',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontSize: MediaQuery.of(context).size.height * 0.05,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Divider(
            color: Theme.of(context).textTheme.bodyText1!.color,
            endIndent: MediaQuery.of(context).size.width * 0.07,
            indent: MediaQuery.of(context).size.width * 0.072,
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.width * 0.1,
            ),
            child: Align(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.height * 0.014,
                  ),
                  child: Image.asset(
                    currentTheme.currentTheme() == ThemeMode.light
                        ? 'assets/Images/player_2_light.png'
                        : 'assets/Images/player_2_dark.png',
                    scale: 0.75,
                    fit: BoxFit.scaleDown,
                    width: MediaQuery.of(context).size.width * 0.145,
                    height: MediaQuery.of(context).size.width * 0.145,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(100000),
                  border: Border.all(
                    width: MediaQuery.of(context).size.width * 0.0023,
                    color: Theme.of(context).textTheme.bodyText1!.color!,
                  ),
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.0835,
                top: MediaQuery.of(context).size.height * 0.005,
              ),
              child: Text(
                'Opponent',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.005,
                left: MediaQuery.of(context).size.width * 0.1825,
              ),
              child: Text(
                '31',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: MediaQuery.of(context).size.height * 0.024,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          Image.asset(
            'assets/Images/large_card.png',
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.38725,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
            ),
            child: Row(
              children: [
                Align(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.015,
                        right: MediaQuery.of(context).size.width * 0.017,
                        left: MediaQuery.of(context).size.width * 0.0267,
                        top: MediaQuery.of(context).size.height * 0.015,
                      ),
                      child: Image.asset(
                        currentTheme.currentTheme() == ThemeMode.light
                            ? 'assets/Images/player_light.png'
                            : 'assets/Images/player_dark.png',
                        fit: BoxFit.scaleDown,
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.width * 0.145,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(100000),
                      border: Border.all(
                        width: MediaQuery.of(context).size.width * 0.0023,
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.0225,
                ),
                Column(
                  children: [
                    Text(
                      'You',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: MediaQuery.of(context).size.height * 0.0275,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '33',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: MediaQuery.of(context).size.height * 0.0275,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3125,
                ),
                GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print(aIDeck);
                    }
                    if (kDebugMode) {
                      print(player1Deck);
                    }
                  },
                  child: Image.asset(
                    'assets/Images/card_back.png',
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: MediaQuery.of(context).size.height * 0.036,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.635,
                ),
                Text(
                  'Stack',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: MediaQuery.of(context).size.height * 0.0275,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
