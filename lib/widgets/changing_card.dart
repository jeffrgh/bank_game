import 'dart:async';

import 'package:flutter/material.dart';

class ChangingCard extends StatefulWidget {
  List deck;

  ChangingCard({Key? key, required this.deck}) : super(key: key);

  @override
  State<ChangingCard> createState() => ChangingCardState();
}

class ChangingCardState extends State<ChangingCard> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        print(widget.deck);
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/Images/1.png"), context);
    precacheImage(const AssetImage("assets/Images/2.png"), context);
    precacheImage(const AssetImage("assets/Images/3.png"), context);
    precacheImage(const AssetImage("assets/Images/4.png"), context);
    precacheImage(const AssetImage("assets/Images/5.png"), context);
    precacheImage(const AssetImage("assets/Images/6.png"), context);
    precacheImage(const AssetImage("assets/Images/7.png"), context);
    precacheImage(const AssetImage("assets/Images/8.png"), context);
    precacheImage(const AssetImage("assets/Images/9.png"), context);
    precacheImage(const AssetImage("assets/Images/10.png"), context);
    precacheImage(const AssetImage("assets/Images/11.png"), context);
    precacheImage(const AssetImage("assets/Images/12.png"), context);
    precacheImage(const AssetImage("assets/Images/13.png"), context);
    precacheImage(const AssetImage("assets/Images/14.png"), context);
    precacheImage(const AssetImage("assets/Images/15.png"), context);
    precacheImage(const AssetImage("assets/Images/16.png"), context);
    precacheImage(const AssetImage("assets/Images/17.png"), context);
    precacheImage(const AssetImage("assets/Images/18.png"), context);
    precacheImage(const AssetImage("assets/Images/19.png"), context);
    precacheImage(const AssetImage("assets/Images/20.png"), context);
    precacheImage(const AssetImage("assets/Images/21.png"), context);
    precacheImage(const AssetImage("assets/Images/22.png"), context);
    precacheImage(const AssetImage("assets/Images/23.png"), context);
    precacheImage(const AssetImage("assets/Images/24.png"), context);
    precacheImage(const AssetImage("assets/Images/25.png"), context);
    precacheImage(const AssetImage("assets/Images/26.png"), context);
    precacheImage(const AssetImage("assets/Images/27.png"), context);
    precacheImage(const AssetImage("assets/Images/28.png"), context);
    precacheImage(const AssetImage("assets/Images/29.png"), context);
    precacheImage(const AssetImage("assets/Images/30.png"), context);
    precacheImage(const AssetImage("assets/Images/31.png"), context);
    precacheImage(const AssetImage("assets/Images/32.png"), context);
    precacheImage(const AssetImage("assets/Images/33.png"), context);
    precacheImage(const AssetImage("assets/Images/34.png"), context);
    precacheImage(const AssetImage("assets/Images/35.png"), context);
    precacheImage(const AssetImage("assets/Images/36.png"), context);
    precacheImage(const AssetImage("assets/Images/37.png"), context);
    precacheImage(const AssetImage("assets/Images/38.png"), context);
    precacheImage(const AssetImage("assets/Images/39.png"), context);
    precacheImage(const AssetImage("assets/Images/40.png"), context);
    precacheImage(const AssetImage("assets/Images/41.png"), context);
    precacheImage(const AssetImage("assets/Images/42.png"), context);
    precacheImage(const AssetImage("assets/Images/43.png"), context);
    precacheImage(const AssetImage("assets/Images/44.png"), context);
    precacheImage(const AssetImage("assets/Images/45.png"), context);
    precacheImage(const AssetImage("assets/Images/46.png"), context);
    precacheImage(const AssetImage("assets/Images/47.png"), context);
    precacheImage(const AssetImage("assets/Images/48.png"), context);
    precacheImage(const AssetImage("assets/Images/49.png"), context);
    precacheImage(const AssetImage("assets/Images/50.png"), context);
    precacheImage(const AssetImage("assets/Images/51.png"), context);
    precacheImage(const AssetImage("assets/Images/52.png"), context);
    return Align(
      alignment: Alignment.center,
      child: widget.deck.isEmpty
          ? Image.asset('assets/Images/15.png')
          : Image.asset('assets/Images/${widget.deck.first}.png'),
    );
  }
}
