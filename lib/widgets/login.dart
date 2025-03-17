import 'package:flutter/material.dart';
import 'package:flutter_application_1/functions/auth_function.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = "";
  String password = "";
  String username = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Email/password Authentication'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey('user name'),
                      decoration: InputDecoration(hintText: "Enter user name"),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username is too small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: "Enter email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'invalid email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: "Enter password "),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is too small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          //must have null check
                          _formkey.currentState!
                              .save(); // before signup call , must check validatetion and save
                          signup(email, password);
                        }
                      },
                      child: isLogin ? Text('Login') : Text('Signup'))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? Text("Don't have an account? Signup")
                      : Text('Already Signed up? Login'))
            ],
          ),
        ),
      ),
    );
  }
}
