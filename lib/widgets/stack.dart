import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Stack(
          children: [
            Positioned(
                // Positioned widget is used to position the child widget
                bottom: 10,
                left: 20,
                child: Container(
                  // first container is below the second container
                  height: 400,
                  width: 400,
                  color: Colors.amberAccent,
                )),
            Positioned(
                top: 40,
                right: 70,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ))
          ],
        )),
      ),
    );
  }
}
