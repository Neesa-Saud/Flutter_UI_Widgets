import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(Text('Buttons')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Press me'),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent)),
          ) //(onpresses,child)these two are most required things in textButton
        ],
      ),
    );
  }
}
