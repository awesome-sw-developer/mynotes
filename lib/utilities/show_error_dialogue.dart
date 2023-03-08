import 'package:flutter/material.dart';

Future<void> showErrorDialogue(
  BuildContext context,
  String error,
) async {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('An Error Ocurred'),
        content: Text(error),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );
}
