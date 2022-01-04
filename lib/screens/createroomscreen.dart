import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  String dropdownValue = 'Two';
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
            Padding(
              child: const Align(
                child: Text(
                  'Maximum Players',
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
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Align(
                child: DropdownButton(
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Two',
                    'Free',
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
                      child: Text(value),
                    );
                  }).toList(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  value: dropdownValue,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Padding(
              child: const Align(
                child: Text(
                  'Number of decks',
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
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Align(
                child: DropdownButton(
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Two',
                    'Free',
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
                      child: Text(value),
                    );
                  }).toList(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  value: dropdownValue,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Row(
                children: [
                  Align(
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isPrivate,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Text(
                    pubOrPriv,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              ),
              child: !inviteLinkCopied
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          inviteLinkCopied = true;
                        });
                      },
                      child: const Text(
                        'INVITE',
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.lightBlue.shade300,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                    )
                  : ElevatedButton(
                      child: const Text('LINK COPIED'),
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.lightBlue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'LOUNGE',
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(30, 237, 237, 237),
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2108,
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
