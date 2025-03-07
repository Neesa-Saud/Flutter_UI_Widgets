import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
              color: Colors.green,
              child: ListView(
                children: [
                  DrawerHeader(
                      padding: EdgeInsets.all(
                          0), //makes padding 0 for overall header
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Minion'),
                                  Text('mini123@gmail.cm')
                                ]),
                          ],
                        ),
                      )),
                  ListTile(
                    leading: Icon(Icons.folder),
                    title: Text('My Files'),
                  ),
                  ListTile(
                    leading: Icon(Icons.grade_rounded),
                    title: Text('Shared with'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Starred'),
                  ),
                  ListTile(
                    leading: Icon(Icons.contact_page),
                    title: Text('Contacts'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text('Feedback'),
                  ),
                  ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Trash'),
                  ),
                  ListTile(
                    leading: Icon(Icons.upload),
                    title: Text('uploads'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Share'),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('logout'),
                  ),
                  ListTile(
                    leading: Icon(Icons.switch_account),
                    title: Text('Switch Account'),
                  ),
                ],
              )),
        ),
        appBar: AppBar(
          title: Text('Drawer'),
          backgroundColor: Colors.green,
        ),
        body: Container(
            child: Center(
          child: Text('Hello'),
        )));
  }
}
