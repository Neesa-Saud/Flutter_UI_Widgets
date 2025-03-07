import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

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
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFtcVTtbE77HbBdYhgkyy9ecA2LbBZZZBhcw&s',
                      ),
                      fit: BoxFit.cover))),
        ));
  }
}
