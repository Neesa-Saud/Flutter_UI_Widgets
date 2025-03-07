import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Cacheimg extends StatelessWidget {
  const Cacheimg({super.key});
//for cache network image we include one more dependency in pubspec.yaml
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sinchan')),
        body: Center(
            //if we want the image to be changed according to container then we use image inside box decoration
            child: Container(
          height: 300,
          width: 250,
          child: CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFtcVTtbE77HbBdYhgkyy9ecA2LbBZZZBhcw&s',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        )));
  }
}
