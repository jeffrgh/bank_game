import 'dart:async';

import 'package:bank_game/widgets/deck_len.dart';
import 'package:bank_game/widgets/winlose.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/changing_card.dart';
import '../widgets/changing_card_2.dart';
import '../widgets/config.dart';
import '../widgets/deck.dart';
import '../widgets/startingDlgBox.dart';

class SinglePlyr extends StatefulWidget {
  const SinglePlyr({Key? key}) : super(key: key);
  static const routeName = '/single-player';

  @override
  _SinglePlyrState createState() => _SinglePlyrState();
}

class _SinglePlyrState extends State<SinglePlyr> {
  @override
  Widget build(BuildContext context) {
    List oD = [];
    List pD = [];
    List aD = [];
    oD = Deck().originalDeck;
    pD = Deck().player1Deck;
    aD = Deck().aIDeck;
    oD.shuffle();
    pD = oD.sublist(0, 26);
    aD = oD.sublist(26);
    aD.shuffle();
    pD.shuffle();
    oD = [];
    Future.delayed(Duration.zero, () {
      startGame(context);
    });
    Timer.periodic(Duration.zero, (timer) {
      if (pD.isEmpty) {
        timer.cancel();
        winOrLose(context, 'You Lose');
      } else if (aD.isEmpty) {
        timer.cancel();
        winOrLose(context, 'You Win!');
      }
    });
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
                child: DeckLen(
                  deck: aD,
                )),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            child: ChangingCard(
              deck: oD,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Divider(
            color: Theme.of(context).textTheme.bodyText1!.color,
            endIndent: MediaQuery.of(context).size.width * 0.07,
            indent: MediaQuery.of(context).size.width * 0.072,
            thickness: 0.5,
          ),
          SizedBox(
            child: ChangingCard2(
              deck: oD,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.2,
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
                    DeckLen(
                      deck: pD,
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3125,
                ),
                GestureDetector(
                  onDoubleTap: () {
                    if (kDebugMode) {
                      print(aD);
                    }
                    if (kDebugMode) {
                      print(pD);
                    }
                    if (kDebugMode) {
                      print(oD);
                    }
                  },
                  onTap: () {
                    if (pD.isEmpty) {
                      winOrLose(context, 'You Lost');
                    } else if (aD.isEmpty) {
                      winOrLose(context, 'You Won!');
                    }
                    oD.insert(0, pD.first);
                    pD.remove(pD.first);

                    if (oD.length >= 2) {
                      if (Deck().interpreter[oD.first]?.cardType ==
                          Deck().interpreter[oD[1]]?.cardType) {
                        pD.addAll(oD);
                        oD.clear();
                        oD.insert(0, pD.first);
                        pD.remove(pD.first);
                        if (pD.isEmpty) {
                          winOrLose(context, 'You Lost');
                        } else if (aD.isEmpty) {
                          winOrLose(context, 'You Won!');
                        }
                      }
                    }
                    Timer(const Duration(milliseconds: 1000), () {
                      print(aD.first);
                      oD.insert(0, aD.first);
                      aD.remove(aD.first);
                      print(oD[1]);
                      if (oD.length >= 2) {
                        if (Deck().interpreter[oD.first]?.cardType ==
                            Deck().interpreter[oD[1]]?.cardType) {
                          aD.addAll(oD);
                          oD.clear();
                          oD.insert(0, aD.first);
                          aD.remove(aD.first);
                          if (pD.isEmpty) {
                            winOrLose(context, 'You Lost');
                          } else if (aD.isEmpty) {
                            winOrLose(context, 'You Won!');
                          }
                        }
                      }
                    });
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
