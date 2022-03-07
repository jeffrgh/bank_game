import 'package:flutter/material.dart';

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
                        fontSize: 36.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    // Vector 3
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
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
              padding: const EdgeInsets.only(
                bottom: 65.5,
              ),
              child: Divider(
                color: Theme.of(context).textTheme.bodyText1!.color,
                thickness: 0.5,
                indent: 32,
                endIndent: 30,
              ),
            ),
            const Image(
              image: AssetImage(
                "assets/Images/player_light.png",
              ),
              height: 233,
              width: 206,
              fit: BoxFit.cover,
            ),
            // Username
            Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
                left: 32.0,
                bottom: 12.0,
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
                      fontSize: 36.0),
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
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 66,
                bottom: 60,
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
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  labelStyle: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0,
                  ),
                ),
                controller: _textEditingController,
              ),
            ),
            // Vector
            Opacity(
              opacity: 0.8500000238418579,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'JOIN',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff65c8d0),
                  fixedSize: const Size(
                    225.63,
                    55.03,
                  ),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 32.5,
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
                  primary: Theme.of(context).canvasColor,
                  fixedSize: const Size(
                    225.63,
                    55.03,
                  ),
                  shape: const StadiumBorder(),
                  side: BorderSide(
                    width: 1,
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
