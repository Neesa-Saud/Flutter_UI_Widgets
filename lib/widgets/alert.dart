import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context); // calling the function
            },
            child: Text('show alert')),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  // function to show alert dialog
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('This an alert '),
          content: SingleChildScrollView(
              child: ListBody(
            children: [Text('This is a demo'), Text('This is me')],
          )),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'))
          ],
        );
      });
}
