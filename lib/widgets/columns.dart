import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Container(
        height: h,
        width: w,
        color: Colors.blue,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //textDirection: TextDirection.rtl,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.deepOrange,
            ),
            Container(
              height: 60,
              width: 60,
              color: const Color.fromARGB(255, 107, 19, 161),
            ),
            Container(
              height: 60,
              width: 60,
              color: const Color.fromARGB(255, 21, 187, 9),
            ),
            Container(
              height: 60,
              width: 60,
              color: const Color.fromARGB(255, 21, 9, 44),
            )
          ],
        ),
      ),
    );
  }
}
