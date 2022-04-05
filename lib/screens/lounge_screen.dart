import 'package:flutter/material.dart';

import '../widgets/config.dart';

class LoungeScreen extends StatefulWidget {
  const LoungeScreen({Key? key}) : super(key: key);
  static const routeName = '/lounge-screen';

  @override
  _LoungeScreenState createState() => _LoungeScreenState();
}

class _LoungeScreenState extends State<LoungeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentTheme.currentTheme() == ThemeMode.light
          ? const Color(0xFFE5E5E5)
          : const Color(0xFF3C3C3B),
      appBar: AppBar(
        title: // Lounge
            Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.right,
            left: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Text(
            "Lounge",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontFamily: "Montserrat",
              fontStyle: FontStyle.normal,
              fontSize: 36.0,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          Divider(
            indent: MediaQuery.of(context).size.width * 0.071,
            endIndent: MediaQuery.of(context).size.width * 0.07,
            thickness: 1,
            color: Theme.of(context).textTheme.bodyText1!.color,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              top: MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.07,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(
                          side: BorderSide(
                            color:
                                Theme.of(context).textTheme.bodyText1!.color!,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Image.asset(
                        currentTheme.currentTheme() == ThemeMode.light
                            ? 'assets/Images/player_2_light.png'
                            : 'assets/Images/player_2_dark.png',
                        fit: BoxFit.scaleDown,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.width * 0.3,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Player 2",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.225,
                ),
                Column(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(
                          side: BorderSide(
                            color:
                                Theme.of(context).textTheme.bodyText1!.color!,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Image.asset(
                        currentTheme.currentTheme() == ThemeMode.light
                            ? 'assets/Images/player_3_light.png'
                            : 'assets/Images/player_3_dark.png',
                        fit: BoxFit.scaleDown,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.width * 0.3,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Player 3",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Column(
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: Colors.transparent,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Theme.of(context).textTheme.bodyText1!.color!,
                      width: 1,
                    ),
                  ),
                ),
                child: Image.asset(
                  currentTheme.currentTheme() == ThemeMode.light
                      ? 'assets/Images/player_4_light.png'
                      : 'assets/Images/player_4_dark.png',
                  fit: BoxFit.scaleDown,
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Player 4",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'Welcome to the party!!',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontFamily: "Montserrat",
              fontStyle: FontStyle.normal,
              fontSize: MediaQuery.of(context).size.width * 0.075,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          ElevatedButton(
            child: const Text('Play'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
