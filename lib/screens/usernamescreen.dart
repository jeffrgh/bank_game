import 'dart:convert';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'lounge_screen.dart';

class User {
  final File imageFile;
  final String username;

  User({
    required this.imageFile,
    required this.username,
  });
}

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({Key? key}) : super(key: key);

  @override
  UserNameScreenState createState() => UserNameScreenState();
}

class UserNameScreenState extends State<UserNameScreen> {
  final _firebaseStorage = FirebaseStorage.instance;
  String? imageUrl;
  String url =
      'https://bank-game-ded66-default-rtdb.asia-southeast1.firebasedatabase.app/username-screen/';
  ImagePicker picker = ImagePicker();
  File? imageFile;
  //display image selected from gallery
  final titleController = TextEditingController();
  String text = "No Value Entered";
  String? _rpnse;

  Future<dynamic> imageSelectorGallery() async {
    // Pick an image
    final XFile? gallery = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(gallery!.path);
    });
    Navigator.pop(context);
  }

  Future<dynamic> imageSelectorCamera() async {
    // Pick an image
    final XFile? camera = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = File(camera!.path);
    });
    Navigator.pop(context);
  }

  runDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Choose an image'),
        content: const Text('Pick from gallery or camera'),
        actions: [
          TextButton(
            child: Text(
              'Gallery',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            onPressed: imageSelectorGallery,
          ),
          TextButton(
            child: Text(
              'Camera',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            onPressed: imageSelectorCamera,
          ),
          TextButton(
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  sendImage() async {
    var uniqueId = UniqueKey();
    var snapshot = await _firebaseStorage
        .ref('userData/')
        .child(uniqueId.toString() + '.jpg')
        .putFile(imageFile!);

    String downloadUrl = await snapshot.ref.getDownloadURL();
    setState(() {
      snapshot;
      downloadUrl;
      imageUrl = downloadUrl;
    });
    if (kDebugMode) {
      print(imageUrl);
    }
  }

  void _setText() {
    setState(() {
      text = titleController.text;
      sendImage();
      FocusManager.instance.primaryFocus?.unfocus();
      if (kDebugMode) {
        print('response posted');
      }
      if (kDebugMode) {
        print(text);
      }
    });
  }

  Future<http.Response> postData() async {
    var response = await http.post(
        Uri.parse(
            'https://bank-game-ded66-default-rtdb.asia-southeast1.firebasedatabase.app/userData.json'),
        body: json.encode({
          'username': titleController.text,
          'imageUrl': imageUrl,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    _rpnse = response.body;
    if (kDebugMode) {
      print(response.body);
      print(imageUrl);
    }
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.07,
                left: MediaQuery.of(context).size.width * 0.035,
              ),
              child: Align(
                child: Text(
                  'Choose Avatar',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
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
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
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
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
                controller: titleController,
                onEditingComplete: _setText,
              ),
            ),
            SizedBox(
              height: imageFile == null
                  ? MediaQuery.of(context).size.height * 0.3
                  : MediaQuery.of(context).size.height * 0.22,
            ),
            ElevatedButton(
              onPressed: () {
                if (_rpnse == null) {
                  postData();
                  const ScaffoldMessenger(
                    child: SnackBar(
                      content: Text('Data posted'),
                      duration: Duration(
                        seconds: 2,
                      ),
                    ),
                  );
                } else if (_rpnse != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => LoungeScreen(
                            imageFile!,
                            titleController.text,
                          )),
                    ),
                  );
                }
              },
              child: Text(
                'Join',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                ),
              ),
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
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Exit',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                ),
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
