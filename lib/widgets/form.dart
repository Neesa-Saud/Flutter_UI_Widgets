import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Widget'),
        ),
        body:Center(child: Form(child: TextFormField(key: ValueKey('firstname'),validator: (value){
          if(value.toString().isEmpty){
            return 'First name can't be empty';
          }
          else{
            return null;
          }
        },)),
        ));
  }
}
