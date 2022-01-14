import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'lounge_screen.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({Key? key}) : super(key: key);

  @override
  UserNameScreenState createState() => UserNameScreenState();
}

class UserNameScreenState extends State<UserNameScreen> {
  ImagePicker picker = ImagePicker();
  File? imageFile;
  //display image selected from gallery
  @override
  Widget build(BuildContext context) {
    Future<dynamic> imageSelectorGallery() async {
      // Pick an image
      final XFile? gallery =
          await picker.pickImage(source: ImageSource.gallery);
      setState(() {
        imageFile = File(gallery!.path);
      });
    }

    Future<dynamic> imageSelectorCamera() async {
      // Pick an image
      final XFile? camera = await picker.pickImage(source: ImageSource.camera);
      setState(() {
        imageFile = File(camera!.path);
      });
    }

    runDialog() {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Choose an image'),
          content: const Text('Pick from gallery or camera'),
          actions: [
            TextButton(
              child: const Text('Gallery'),
              onPressed: imageSelectorGallery,
            ),
            TextButton(
              child: const Text('Camera'),
              onPressed: imageSelectorCamera,
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
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
            GestureDetector(
              child: imageFile != null
                  ? Container(
                      child: ClipRRect(
                        child: Image.file(
                          imageFile!,
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
                          )),
                    )
                  : Container(
                      child: Padding(
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02,
                        ),
                        child: const Text('Choose an avatar'),
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
              onTap: runDialog,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.048,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Divider(
              color: Theme.of(context).textTheme.bodyText1?.color,
              thickness: 1.5,
              indent: MediaQuery.of(context).size.height * 0.02,
              endIndent: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035,
              ),
              child: TextField(
                enabled: true,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.name,
                autocorrect: true,
                enableSuggestions: true,
                cursorColor: Theme.of(context).textTheme.bodyText1?.color,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter username',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const LoungeScreen()),
                  ),
                );
              },
              child: const Text('Join'),
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
                fixedSize: MaterialStateProperty.all(
                  Size(
                    MediaQuery.of(context).size.width * 0.35,
                    MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Exit'),
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
      ),
    );
  }
}
