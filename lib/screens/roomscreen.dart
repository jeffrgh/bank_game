import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'createroomscreen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(37, 237, 237, 237),
      appBar: PreferredSize(
        child: SizedBox(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.03,
                ),
                child: const Text(
                  'ROOMS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
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
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 5,
                  right: 5,
                ),
                child: ListTile(
                  enabled: true,
                  title: const Text(
                    'Room name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  enableFeedback: true,
                  onTap: () {
                    if (kDebugMode) {
                      print('Hello');
                    }
                  },
                  leading: Text(
                    "${i + 1}.",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  trailing: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      const Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Image.network(
                        'https://media.discordapp.net/attachments/912671770341949470/925739440071135242/Asset_64x.png?width=600&height=677',
                        fit: BoxFit.scaleDown,
                        color: Colors.white,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      const Text(
                        '3/10',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 20,
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
                onPressed: () {},
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}
