import 'package:flutter/material.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({Key? key}) : super(key: key);

  @override
  _UsernameScreenState createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Choose avatar
            Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                top: 33,
                bottom: 12,
              ),
              child: Align(
                child: Row(
                  children: [
                    const Text(
                      "Choose avatar",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 36.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    // Vector 3
                    const SizedBox(
                      width: 34,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 65.5,
              ),
              child: Divider(
                color: Color(0xffffffff),
                thickness: 0.5,
                indent: 32,
                endIndent: 30,
              ),
            ),
            const Image(
              image: AssetImage("assets/Images/unknown.png"),
              height: 233,
              width: 206,
              fit: BoxFit.cover,
            ),
            // Username
            const Padding(
              padding: EdgeInsets.only(
                top: 18.0,
                left: 32.0,
                bottom: 12.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 36.0),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const Divider(
              color: Color(0xffffffff),
              thickness: 0.5,
              indent: 32,
              endIndent: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 32.0,
                right: 66,
                bottom: 60,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: // Enter Username
                      Text(
                    "Enter Username",
                    style: TextStyle(
                      color: Color(0x99ffffff),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            // Vector
            Opacity(
              opacity: 0.8500000238418579,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('JOIN'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff65c8d0),
                  fixedSize: const Size(
                    225.63,
                    55.03,
                  ),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 32.5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("EXIT"),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(
                  225.63,
                  55.03,
                ),
                shape: const StadiumBorder(),
                side: const BorderSide(
                  width: 1,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
