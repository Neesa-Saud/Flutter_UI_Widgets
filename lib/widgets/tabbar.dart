import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('WhatsApp'),
          bottom:
              TabBar(indicatorColor: Colors.white, indicatorWeight: 10, tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: 'status',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'calls',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text('Chats'),
              ),
            ),
            Container(
              child: Center(
                child: Text('status'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Calls'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
