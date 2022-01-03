import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              child: const Align(
                child: Text(
                  'Room Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 2,
              indent: MediaQuery.of(context).size.width * 0.02,
              endIndent: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              child: Align(
                child: SizedBox(
                  child: const TextField(
                    enabled: true,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    autocorrect: true,
                    enableSuggestions: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorText: 'Please enter a valid room name',
                      hintText: 'Enter room name',
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.98 - 65,
                ),
                alignment: Alignment.centerLeft,
              ),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
