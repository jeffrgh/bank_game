import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({Key? key}) : super(key: key);

  @override
  UserNameScreenState createState() => UserNameScreenState();
}

class UserNameScreenState extends State<UserNameScreen> {
  ImagePicker picker = ImagePicker();
  File? galleryFile;
  //display image selected from gallery
  @override
  Widget build(BuildContext context) {
    Future<dynamic> imageSelectorGallery() async {
      // Pick an image
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      setState(() {
        galleryFile = File(image!.path);
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.035,
            ),
            child: const Align(
              child: Text(
                'Choose Avatar',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Divider(
            color: Theme.of(context).textTheme.bodyText1?.color,
            thickness: 1.5,
            indent: MediaQuery.of(context).size.height * 0.02,
            endIndent: MediaQuery.of(context).size.height * 0.02,
          ),
          GestureDetector(
            child: const CircleAvatar(
              child: null,
            ),
            onLongPress: imageSelectorGallery,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Username',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
