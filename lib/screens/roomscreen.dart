import 'package:flutter/material.dart';

import 'usernamescreen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
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
            "ROOMS",
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
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Color(0xFF5fb3ba),
              ),
              iconSize: MediaQuery.of(context).size.height * 0.06,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RoomScreen(),
                //   ),
                // );
              },
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Divider(
            indent: 32,
            endIndent: 30,
            color: Theme.of(context).textTheme.bodyText1!.color,
            thickness: 1,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                child: ListTile(
                  leading: Text('${index + 1}.'),
                  title: Text('Room ${index + 1}'),
                  trailing: Row(
                    children: [
                      Text('${index + 2}'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Image.asset(
                        'assets/Images/card.png',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.height * 0.04,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text('${index + 4}/${index + 5}'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Image.asset(
                        'assets/Images/person.png',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UsernameScreen(),
                      ),
                    );
                  },
                ),
              ),
              shrinkWrap: true,
              itemCount: 10,
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.height * 0.02,
              ),
            ),
          ),  
        ],
      ),
    );
  }
}
