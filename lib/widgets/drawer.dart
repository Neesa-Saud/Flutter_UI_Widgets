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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFtcVTtbE77HbBdYhgkyy9ecA2LbBZZZBhcw&s'),
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
