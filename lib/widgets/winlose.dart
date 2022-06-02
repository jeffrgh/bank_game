import 'package:flutter/material.dart';

void winOrLose(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Game Over'),
      content: Text(message),
      actions: <Widget>[
        ElevatedButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
        )
      ],
    ),
  );
}
