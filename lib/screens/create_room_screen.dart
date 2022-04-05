import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/config.dart';
import 'username_screen.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);
  static const routeName = '/createRoomScreen';

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentTheme.currentTheme() == ThemeMode.light
          ? const Color(0xFFE5E5E5)
          : const Color(0xFF3C3C3B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Room Name",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.045,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Divider(
              endIndent: MediaQuery.of(context).size.width * 0.07,
              indent: MediaQuery.of(context).size.width * 0.072,
              color: Theme.of(context).textTheme.bodyText1!.color,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.0778,
                right: MediaQuery.of(context).size.width * 0.0778,
                bottom: MediaQuery.of(context).size.height * 0.055,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: // Enter Username
                      Text(
                    "Enter Username",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  labelStyle: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Row(
                children: [
                  Text(
                    "Maximum Players",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: MediaQuery.of(context).size.height * 0.0375,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: MediaQuery.of(context).size.width * 0.07,
              indent: MediaQuery.of(context).size.width * 0.072,
              color: Theme.of(context).textTheme.bodyText1!.color,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.0778,
                right: MediaQuery.of(context).size.width * 0.0778,
                bottom: MediaQuery.of(context).size.height * 0.055,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose max players",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "Number of Decks",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: MediaQuery.of(context).size.height * 0.0375,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.065,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              endIndent: MediaQuery.of(context).size.width * 0.07,
              indent: MediaQuery.of(context).size.width * 0.072,
              color: Theme.of(context).textTheme.bodyText1!.color,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.0778,
                right: MediaQuery.of(context).size.width * 0.0778,
                bottom: MediaQuery.of(context).size.height * 0.055,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose max players",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                      activeColor: const Color(0xff65c8d0),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                    Text(
                      switchValue ? 'Private' : 'Public',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Opacity(
              opacity: 0.8500000238418579,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    UsernameScreen.routeName,
                  );
                },
                child: Text(
                  'JOIN',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff65c8d0),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.55,
                    MediaQuery.of(context).size.height * 0.08,
                  ),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.035,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "EXIT",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: currentTheme.currentTheme() == ThemeMode.light
                      ? const Color(0xFFE5E5E5)
                      : const Color(0xFF3C3C3B),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.55,
                    MediaQuery.of(context).size.height * 0.08,
                  ),
                  shape: const StadiumBorder(),
                  side: BorderSide(
                    width: MediaQuery.of(context).size.height * 0.0015,
                    color: Theme.of(context).textTheme.bodyText1!.color!,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
