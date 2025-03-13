//For single image
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // important while we are converting Xfile type into file type

//to use image picker we have to add dependency in pubspec.yaml file
class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file; //XFile is a class in image_picker package for cross platform
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //scaffold is used to create a page
        appBar: AppBar(
          title: Text('Image Picker'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: file == null
                    ? Text('Image not picked')
                    : Image.file(
                        File(
                          file!.path,
                        ),
                        fit: BoxFit.cover,
                      ),
              )), //here we converted Xfile type into file type
          ElevatedButton(
            onPressed: () async {
              final XFile? photo =
                  await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = photo;
              });
              print('Image Picked');
            },
            child: Text('Pick Image'),
          )
        ])));
  }
}
