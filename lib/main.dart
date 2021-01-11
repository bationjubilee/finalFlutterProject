/*import 'dart:js';*/

import 'package:flutter/material.dart';
import './SignIn.dart';
import './SignUp.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 70,
                  right: 30,
                  bottom: 30,
                ),
                child: Image.asset(
                  'assets/images/paQueue.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 40,
                  right: 30,
                  bottom: 30,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 5,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 180,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return SignIn();
                              },
                            ),
                          );
                        },
                        child: Text("Login and Queue"),
                        color: Colors.blue[900],
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: 180,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return SignUp();
                              },
                            ),
                          );
                        },
                        child: Text("Sign Up"),
                        color: Colors.blue[900],
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
