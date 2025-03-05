import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: Text('Press me'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrangeAccent)),
              overlayColor: MaterialStateProperty.all(Colors
                  .brown)), //(onpresses,child)these two are most required things in textButton
          SizedBox(
              height: 20), //used sizeBox to add some space betwwen two buttons
          Column(
            //here we wrapped elevated button inside column to set height and width
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Elevated button pressed');
                },
                child: Text('Press me'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
