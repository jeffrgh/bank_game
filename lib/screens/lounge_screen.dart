import 'dart:io';

import 'package:flutter/material.dart';

class LoungeScreen extends StatefulWidget {
  final File imageFile;
  const LoungeScreen(this.imageFile, {Key? key}) : super(key: key);

  @override
  _LoungeScreenState createState() => _LoungeScreenState();
}

class _LoungeScreenState extends State<LoungeScreen> {
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
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.035,
            ),
          ),
          Divider(
            color: Theme.of(context).textTheme.bodyText1?.color,
            thickness: 1.5,
            indent: MediaQuery.of(context).size.height * 0.02,
            endIndent: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
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
                width: MediaQuery.of(context).size.width * 0.27,
                height: MediaQuery.of(context).size.width * 0.27,
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
                width: MediaQuery.of(context).size.width * 0.27,
                height: MediaQuery.of(context).size.width * 0.27,
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
            ],
          ),
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
            width: MediaQuery.of(context).size.width * 0.27,
            height: MediaQuery.of(context).size.width * 0.27,
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
        ],
      ),
    );
  }
}
