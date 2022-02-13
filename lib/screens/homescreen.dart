// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './roomscreen.dart';
import './single_plyr.dart';
import '../screens/settingscreen.dart';
import '../widgets/config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.053,
            ),
            child: Center(
              child: Text(
                'BANK CARD',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: MediaQuery.of(context).size.height * 0.06,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Theme.of(context).textTheme.bodyText1!.color,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          Center(
            child: Text(
              'The game of luck',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: MediaQuery.of(context).size.height * 0.023,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height >= 700
                ? MediaQuery.of(context).size.height * 0.06
                : MediaQuery.of(context).size.height * 0.04,
          ),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: const AssetImage(
                'assets/Images/title.png',
              ),
              fit: BoxFit.scaleDown,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.42,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height >= 700
                ? MediaQuery.of(context).size.height * 0.08
                : MediaQuery.of(context).size.height * 0.065,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SinglePlyr(),
                ),
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const StadiumBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                const Color(0xff65c8d0),
              ),
              foregroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              fixedSize: MaterialStateProperty.all(
                MediaQuery.of(context).size.height >= 700
                    ? Size(
                        MediaQuery.of(context).size.width * 0.55,
                        MediaQuery.of(context).size.height * 0.065,
                      )
                    : Size(
                        MediaQuery.of(context).size.width * 0.45,
                        MediaQuery.of(context).size.height * 0.065,
                      ),
              ),
            ),
            child: Text(
              'SINGLE PLAYER',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height >= 700
                ? MediaQuery.of(context).size.height * 0.04 - 5
                : MediaQuery.of(context).size.height * 0.02 - 6,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RoomScreen(),
                ),
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                StadiumBorder(
                  side: BorderSide(
                    width: 1,
                    color: currentTheme.currentTheme() == ThemeMode.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).canvasColor,
              ),
              foregroundColor: MaterialStateProperty.all(
                Theme.of(context).textTheme.bodyText1!.color,
              ),
              fixedSize: MaterialStateProperty.all(
                MediaQuery.of(context).size.height >= 700
                    ? Size(
                        MediaQuery.of(context).size.width * 0.55,
                        MediaQuery.of(context).size.height * 0.065,
                      )
                    : Size(
                        MediaQuery.of(context).size.width * 0.45,
                        MediaQuery.of(context).size.height * 0.065,
                      ),
              ),
            ),
            child: Text(
              'MULTI PLAYER',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0165,
          ),
          Align(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.settings,
              ),
              iconSize: MediaQuery.of(context).size.height * 0.06,
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
