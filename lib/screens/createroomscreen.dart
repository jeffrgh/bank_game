import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'usernamescreen.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  String nod = 'Two';
  String mp = 'Two';
  bool isPrivate = false;
  String pubOrPriv = 'Public';
  void toggleSwitch(bool value) {
    if (isPrivate == false) {
      setState(() {
        isPrivate = true;
        pubOrPriv = 'Private';
      });
      if (kDebugMode) {
        print('Switch Button is ON');
      }
    } else {
      setState(() {
        isPrivate = false;
        pubOrPriv = 'Public';
      });
      if (kDebugMode) {
        print('Switch Button is OFF');
      }
    }
  }

  bool inviteLinkCopied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              child: Align(
                child: Text(
                  'Room Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
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
              color: Theme.of(context).textTheme.bodyText1?.color,
              thickness: 1.5,
              indent: MediaQuery.of(context).size.height * 0.02,
              endIndent: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              child: Align(
                child: ConstrainedBox(
                  child: TextField(
                    enabled: true,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    autocorrect: true,
                    enableSuggestions: true,
                    cursorColor: Theme.of(context).textTheme.bodyText1?.color,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter room name',
                    ),
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.width * 0.98 - 65,
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            Padding(
              child: Align(
                child: Text(
                  'Maximum Players',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
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
              color: Theme.of(context).textTheme.bodyText1?.color,
              thickness: 1.5,
              indent: MediaQuery.of(context).size.height * 0.02,
              endIndent: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Align(
                child: DropdownButton(
                  onChanged: (String? newValue) {
                    setState(() {
                      mp = newValue!;
                    });
                  },
                  items: <String>[
                    'Two',
                    'Three',
                    'Four',
                    'Five',
                    'Six',
                    'Seven',
                    'Eight',
                    'Nine',
                    'Ten',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    );
                  }).toList(),
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  value: mp,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Padding(
              child: Align(
                child: Text(
                  'Number of decks',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
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
              color: Theme.of(context).textTheme.bodyText1!.color,
              thickness: 1.5,
              indent: MediaQuery.of(context).size.height * 0.02,
              endIndent: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Align(
                child: DropdownButton(
                  onChanged: (String? newValue) {
                    setState(() {
                      nod = newValue!;
                    });
                  },
                  items: <String>[
                    'Two',
                    'Three',
                    'Four',
                    'Five',
                    'Six',
                    'Seven',
                    'Eight',
                    'Nine',
                    'Ten',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    );
                  }).toList(),
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  value: nod,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.018,
                left: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Row(
                children: [
                  Align(
                    child: CupertinoSwitch(
                      onChanged: toggleSwitch,
                      value: isPrivate,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    pubOrPriv,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              ),
              child: !inviteLinkCopied
                  // ignore: deprecated_member_use
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          inviteLinkCopied = true;
                        });
                      },
                      child: SizedBox(
                        child: Align(
                          child: Text(
                            'INVITE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 2,
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.lightBlue,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                    )
                  // ignore: deprecated_member_use
                  : ElevatedButton(
                      child: SizedBox(
                        child: Align(
                          child: Text(
                            'LINK COPIED',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.lightBlue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                    ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0125,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserNameScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  child: Align(
                    child: Text(
                      'LOUNGE',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(
                        color: (Theme.of(context).textTheme.bodyText1?.color)!,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).textTheme.bodyText1?.color,
                  ),
                  elevation: MaterialStateProperty.all(
                    0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Align(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
