import 'package:flutter/material.dart';

class AssetImag extends StatelessWidget {
  const AssetImag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sinchan')),
        body: Center(
          //if we want the image to be changed according to container then we use image inside box decoration
          child: Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.white, spreadRadius: 5.0)
                  ],
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/github.jpg'), // to use asset image go to pubspec.yaml and add the path of the image
                      fit: BoxFit.cover))),
        ));
  }
}
