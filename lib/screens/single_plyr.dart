import 'dart:async';
import 'dart:math';

import 'package:bank_game/widgets/deck_len.dart';
import 'package:bank_game/widgets/winlose.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/changing_card.dart';
import '../widgets/changing_card_2.dart';
import '../widgets/config.dart';
import '../widgets/deck.dart';
import '../widgets/starting_dlg_box.dart';

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
    precacheImage(const AssetImage("assets/Images/1.png"), context);
    precacheImage(const AssetImage("assets/Images/2.png"), context);
    precacheImage(const AssetImage("assets/Images/3.png"), context);
    precacheImage(const AssetImage("assets/Images/4.png"), context);
    precacheImage(const AssetImage("assets/Images/5.png"), context);
    precacheImage(const AssetImage("assets/Images/6.png"), context);
    precacheImage(const AssetImage("assets/Images/7.png"), context);
    precacheImage(const AssetImage("assets/Images/8.png"), context);
    precacheImage(const AssetImage("assets/Images/9.png"), context);
    precacheImage(const AssetImage("assets/Images/10.png"), context);
    precacheImage(const AssetImage("assets/Images/11.png"), context);
    precacheImage(const AssetImage("assets/Images/12.png"), context);
    precacheImage(const AssetImage("assets/Images/13.png"), context);
    precacheImage(const AssetImage("assets/Images/14.png"), context);
    precacheImage(const AssetImage("assets/Images/15.png"), context);
    precacheImage(const AssetImage("assets/Images/16.png"), context);
    precacheImage(const AssetImage("assets/Images/17.png"), context);
    precacheImage(const AssetImage("assets/Images/18.png"), context);
    precacheImage(const AssetImage("assets/Images/19.png"), context);
    precacheImage(const AssetImage("assets/Images/20.png"), context);
    precacheImage(const AssetImage("assets/Images/21.png"), context);
    precacheImage(const AssetImage("assets/Images/22.png"), context);
    precacheImage(const AssetImage("assets/Images/23.png"), context);
    precacheImage(const AssetImage("assets/Images/24.png"), context);
    precacheImage(const AssetImage("assets/Images/25.png"), context);
    precacheImage(const AssetImage("assets/Images/26.png"), context);
    precacheImage(const AssetImage("assets/Images/27.png"), context);
    precacheImage(const AssetImage("assets/Images/28.png"), context);
    precacheImage(const AssetImage("assets/Images/29.png"), context);
    precacheImage(const AssetImage("assets/Images/30.png"), context);
    precacheImage(const AssetImage("assets/Images/31.png"), context);
    precacheImage(const AssetImage("assets/Images/32.png"), context);
    precacheImage(const AssetImage("assets/Images/33.png"), context);
    precacheImage(const AssetImage("assets/Images/34.png"), context);
    precacheImage(const AssetImage("assets/Images/35.png"), context);
    precacheImage(const AssetImage("assets/Images/36.png"), context);
    precacheImage(const AssetImage("assets/Images/37.png"), context);
    precacheImage(const AssetImage("assets/Images/38.png"), context);
    precacheImage(const AssetImage("assets/Images/39.png"), context);
    precacheImage(const AssetImage("assets/Images/40.png"), context);
    precacheImage(const AssetImage("assets/Images/41.png"), context);
    precacheImage(const AssetImage("assets/Images/42.png"), context);
    precacheImage(const AssetImage("assets/Images/43.png"), context);
    precacheImage(const AssetImage("assets/Images/44.png"), context);
    precacheImage(const AssetImage("assets/Images/45.png"), context);
    precacheImage(const AssetImage("assets/Images/46.png"), context);
    precacheImage(const AssetImage("assets/Images/47.png"), context);
    precacheImage(const AssetImage("assets/Images/48.png"), context);
    precacheImage(const AssetImage("assets/Images/49.png"), context);
    precacheImage(const AssetImage("assets/Images/50.png"), context);
    precacheImage(const AssetImage("assets/Images/51.png"), context);
    precacheImage(const AssetImage("assets/Images/52.png"), context);
    precacheImage(const AssetImage("assets/Images/card_back.png"), context);
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
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Stack(
            children: [
              Transform.rotate(
                angle: -pi / 10,
                child: Transform.translate(
                  offset: const Offset(-25, 25),
                  child: SizedBox(
                    child: ChangingCard2(
                      deck: oD,
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.325,
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(45, -20),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 25.0,
                        spreadRadius: -45,
                        color: Colors.grey.shade500,
                        offset: const Offset(0, 30),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ChangingCard(
                    deck: oD,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
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
                    Timer(const Duration(milliseconds: 1000), () {
                      oD.insert(0, pD.first);
                      pD.remove(pD.first);
                      if (oD.length >= 2) {
                        if (Deck().interpreter[oD.first]?.cardType ==
                            Deck().interpreter[oD[1]]?.cardType) {
                          Timer(const Duration(milliseconds: 1000), () {
                            pD.addAll(oD);
                            oD.clear();
                            oD.insert(0, pD.first);
                            pD.remove(pD.first);
                          });

                          if (pD.isEmpty) {
                            winOrLose(context, 'You Lost');
                          } else if (aD.isEmpty) {
                            winOrLose(context, 'You Won!');
                          }
                        }
                      }
                    });

                    Timer(const Duration(milliseconds: 2500), () {
                      if (kDebugMode) {
                        print(aD.first);
                      }
                      oD.insert(0, aD.first);
                      aD.remove(aD.first);
                      if (kDebugMode) {
                        print(oD[1]);
                      }
                      if (oD.length >= 2) {
                        if (Deck().interpreter[oD.first]?.cardType ==
                            Deck().interpreter[oD[1]]?.cardType) {
                          Timer(const Duration(milliseconds: 1000), () {
                            aD.addAll(oD);
                            oD.clear();
                            Timer(const Duration(milliseconds: 500), () {
                              oD.insert(0, aD.first);
                              aD.remove(aD.first);
                            });
                          });

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
