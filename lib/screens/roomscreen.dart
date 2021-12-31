import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(30, 237, 237, 237),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Text(
                  'ROOMS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.52,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.1,
          ),
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
                  title: Text(
                    'Hello ${i + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  enableFeedback: true,
                  onTap: () {
                    print('Hello');
                  },
                ),
              ),
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
