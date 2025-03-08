import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formkey = GlobalKey<FormState>(); //Form key
  String firstname = ''; //Variables
  String lastname = '';
  String email = '';
  String password = '';
  //Functions
  trysubmit() {
    final isvalid = _formkey.currentState!.validate(); //checking validation
    if (isvalid) {
      _formkey.currentState!.save(); //saving the form
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    //submitting form
    print('firstname');
    print('lastname');
    print('email');
    print('password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Widget'),
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'First Name'),
                key: ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Please enter your first name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  //the value entered in the form field is stored in the variable
                  firstname = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'First Name'),
                key: ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Please enter your last name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstname = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'First Name'),
                key: ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Please enter your email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstname = value.toString();
                },
              ),
              TextFormField(
                obscureText: true, //makes password hidden while typing
                decoration: InputDecoration(hintText: 'Password'),
                key: ValueKey('password'),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Minimum 6 characters required';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstname = value.toString();
                },
              ),
              TextButton(
                  //Submit button
                  onPressed: () {
                    trysubmit();
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      )),
    );
  }
}
