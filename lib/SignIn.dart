/*import 'dart:js';*/
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paQeueu/SignUp.dart';

import 'home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController idNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  Future login() async {
    var url = "http://192.168.43.33/paqueue_project/public/api/auth/login";
    var response = await http.post(url, body: {
      "idNumber": idNumber.text,
      "password": password.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      Fluttertoast.showToast(
          msg: "Login Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.blue[200],
          textColor: Colors.black,
          fontSize: 20.0);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      Fluttertoast.showToast(
          msg: "ID Number and Password Incorrect",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.blue[200],
          textColor: Colors.black,
          fontSize: 20.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(children: <Widget>[
        new Container(
          margin: const EdgeInsets.fromLTRB(50, 250, 50, 20),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(50, 80, 50, 20),
          child: Image.asset(
            'assets/images/paQueue.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 80),
        Positioned(
          child: Container(
            margin: const EdgeInsets.only(
              left: 0,
              top: 150,
              right: 0,
              bottom: 0,
            ),
            padding: EdgeInsets.all(5.0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 40),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(width: 5, color: Colors.yellow)),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              controller: idNumber,
                              decoration: InputDecoration(
                                labelText: "Enter ID Number",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              obscureText: true,
                              controller: password,
                              decoration: InputDecoration(
                                labelText: "Enter Password",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                              width: 160,
                              height: 50,
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.blue[900],
                                child: Text(
                                  'Sign In',
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                onPressed: () {
                                  login();
                                },
                              )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Text('Dont have an account?'),
                              FlatButton(
                                textColor: Colors.red,
                                child: Text(
                                  'Sign Up',
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()));
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ))
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
