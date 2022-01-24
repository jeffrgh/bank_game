import 'package:bank_game/screens/settingscreen.dart';
import 'package:flutter/material.dart';

import 'createroomscreen.dart';
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
      appBar: PreferredSize(
        child: SizedBox(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.03,
                ),
                child: Text(
                  'ROOMS',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.03,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateRoomScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
          ),
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height * 0.07,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.018,
                  left: MediaQuery.of(context).size.width * 0.005,
                  right: MediaQuery.of(context).size.width * 0.005,
                ),
                child: ListTile(
                  enabled: true,
                  title: Text(
                    'Room name',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  enableFeedback: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserNameScreen(),
                      ),
                    );
                  },
                  leading: Text(
                    "${i + 1}.",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  trailing: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Image.asset(
                        'assets/Images/Title_Cards.png',
                        fit: BoxFit.scaleDown,
                        color: Colors.white,
                        height: MediaQuery.of(context).size.width * 0.05,
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        '3/10',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Icon(
                        Icons.people,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.settings,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}
