import 'package:flutter/material.dart';

class ContainerSizebox extends StatelessWidget {
  const ContainerSizebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Container and SizedBox')),
      body: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(blurRadius: 20, spreadRadius: 5, color: Colors.white)
              ]),
          color: Colors.amberAccent),
      // { body:Center(child:SizedBox(height: 50,width: 50,child: Text('Hello'))) } THIS IS SIZE BOX
    ); //roof of app (starting of my app)
  }
}
