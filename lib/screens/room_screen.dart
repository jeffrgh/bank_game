import 'package:flutter/material.dart';

import '../widgets/config.dart';
import 'create_room_screen.dart';
import 'setting_screen.dart';
import 'username_screen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);
  static const routeName = '/room-screen';

  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentTheme.currentTheme() == ThemeMode.light
          ? const Color(0xFFE5E5E5)
          : const Color(0xFF3C3C3B),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Text(
            "ROOMS",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontFamily: "Montserrat",
              fontStyle: FontStyle.normal,
              fontSize: MediaQuery.of(context).size.height * 0.0625,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Color(0xFF5fb3ba),
              ),
              iconSize: MediaQuery.of(context).size.height * 0.06,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  CreateRoomScreen.routeName,
                );
              },
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Divider(
            indent: 32,
            endIndent: 30,
            color: Theme.of(context).textTheme.bodyText1!.color,
            thickness: 1,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.height * 0.03,
                ),
                child: ListTile(
                  visualDensity: VisualDensity.compact,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${index + 1}.     Room${index + 1}',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${index + 2}',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Image.asset(
                            'assets/Images/card.png',
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.height * 0.03,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Text(
                            '${index + 4}/${index + 5}',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Image.asset(
                            'assets/Images/person.png',
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.height * 0.03,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ],
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      UsernameScreen.routeName,
                    );
                  },
                ),
              ),
              shrinkWrap: true,
              itemCount: 10,
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.height * 0.02,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: MediaQuery.of(context).size.height * 0.05,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  tooltip: 'Back',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SettingsScreen.routeName,
                    );
                  },
                  icon: const Icon(Icons.settings),
                  iconSize: MediaQuery.of(context).size.height * 0.05,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  tooltip: 'Settings',
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        ],
      ),
    );
  }
}
