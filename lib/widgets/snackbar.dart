import 'package:flutter/material.dart';

class SnackWidget extends StatelessWidget {
  const SnackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Text('This is a snackbar'),
                backgroundColor: Colors.redAccent,
                duration: const Duration(milliseconds: 3000),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                    label: 'Undo', textColor: Colors.white, onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Show Snackbar')),
      ),
    );
  }
}
