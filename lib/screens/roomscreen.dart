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
          Row(
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
                width: MediaQuery.of(context).size.width * 0.56,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                ),
              ),
            ],
          ),
          const SingleChildScrollView(),
        ],
      ),
    );
  }
}
