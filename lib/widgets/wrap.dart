import 'package:flutter/material.dart';

class RowsColumns extends StatelessWidget {
  const RowsColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: Wrap(
          //when overflow occurs then we use wrap in place of row and column
          direction: Axis.vertical, // kun direction maa adjust gardai jaanay
          alignment: WrapAlignment.spaceEvenly, //alignment of the childrens
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
