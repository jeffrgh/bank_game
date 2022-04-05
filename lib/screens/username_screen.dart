import 'package:bank_game/widgets/config.dart';
import 'package:flutter/material.dart';

import 'lounge_screen.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({Key? key}) : super(key: key);
  static const routeName = '/username-screen';

  @override
  _UsernameScreenState createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: currentTheme.currentTheme() == ThemeMode.light
          ? const Color(0xFFE5E5E5)
          : const Color(0xFF3C3C3B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Choose avatar
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.0778,
                top: MediaQuery.of(context).size.height * 0.06,
                bottom: MediaQuery.of(context).size.height * 0.015,
              ),
              child: Align(
                child: Row(
                  children: [
                    Text(
                      "Choose avatar",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: MediaQuery.of(context).size.height * 0.045,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    // Vector 3
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.025,
              ),
              child: Divider(
                color: Theme.of(context).textTheme.bodyText1!.color,
                thickness: MediaQuery.of(context).size.height * 0.0008,
                indent: MediaQuery.of(context).size.width * 0.07,
                endIndent: MediaQuery.of(context).size.width * 0.076,
              ),
            ),
            Image(
              image: AssetImage(
                currentTheme.currentTheme() == ThemeMode.light
                    ? "assets/Images/player_light.png"
                    : 'assets/Images/player_dark.png',
              ),
              height: MediaQuery.of(context).size.height * 0.32,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
            // Username
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.0778,
                bottom: MediaQuery.of(context).size.height * 0.015,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).textTheme.bodyText1!.color,
              thickness: 0.5,
              indent: 32,
              endIndent: 30,
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
                controller: _textEditingController,
              ),
            ),
            // Vector
            Opacity(
              opacity: 0.8500000238418579,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    LoungeScreen.routeName,
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
