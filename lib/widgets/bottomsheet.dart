import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        titleTextStyle: TextStyle(color: Colors.deepPurple),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                isDismissible:
                    false, //this will prevent the user from dismissing the bottom sheet
                enableDrag:
                    false, //this will prevent the user from dragging the bottom sheet
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                backgroundColor: Colors.deepPurple,
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      ListTile(title: Text('Item 1')),
                      ListTile(title: Text('Item 2'))
                    ],
                  );
                });
          },
          child: Text('show Bottom Sheet'),
        ),
      ),
    );
  }
}
