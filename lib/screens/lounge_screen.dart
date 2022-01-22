import 'dart:io';

import 'package:flutter/material.dart';

class LoungeScreen extends StatefulWidget {
  final File imageFile;
  const LoungeScreen(this.imageFile, {Key? key}) : super(key: key);

  @override
  _LoungeScreenState createState() => _LoungeScreenState();
}

class _LoungeScreenState extends State<LoungeScreen> {
  runDialog() {
    return showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Leave the room'),
        content: const Text('Are you sure you want to leave the room?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Stay',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text(
              'Leave',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
          ),
        ],
      ),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            child: const Align(
              child: Text(
                'Lounge',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w300,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
          Divider(
            color: Theme.of(context).textTheme.bodyText1?.color,
            thickness: 0.5,
            indent: MediaQuery.of(context).size.height * 0.02,
            endIndent: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    child: ClipRRect(
                      child: Image.file(
                        widget.imageFile,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  const Text(
                    'Player 1',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: ClipRRect(
                      child: Image.file(
                        widget.imageFile,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  const Text(
                    'Player 2',
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: ClipRRect(
                  child: Image.file(
                    widget.imageFile,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.transparent,
                  ),
                ),
              ),
              const Text(
                'Player 3',
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.1,
          ),
          const Text(
            'Welcome to the party!!',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          ElevatedButton(
            child: const Text('Play'),
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
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
              fixedSize: MaterialStateProperty.all(
                Size(
                  MediaQuery.of(context).size.width * 0.35,
                  MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          ElevatedButton(
            child: const Text('Exit'),
            onPressed: () {
              runDialog();
            },
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
              fixedSize: MaterialStateProperty.all(
                Size(
                  MediaQuery.of(context).size.width * 0.35,
                  MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
