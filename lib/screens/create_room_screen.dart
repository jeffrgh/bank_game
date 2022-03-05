import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  @override
  static const routeName = 'createRoomScreen';
  Widget build(BuildContext context) {
    return Scaffold(
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
              fontSize: MediaQuery.of(context).size.height * 0.0625,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Divider(
            endIndent: 30,
            indent: 32,
            color: Theme.of(context).textTheme.bodyText1!.color,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
