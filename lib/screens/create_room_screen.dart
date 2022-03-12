import 'package:flutter/material.dart';

import '../widgets/config.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);
  static const routeName = '/createRoomScreen';

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
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
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
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
                    fontSize: MediaQuery.of(context).size.height * 0.045,
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
        ],
      ),
    );
  }
}
