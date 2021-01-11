/*import 'dart:js';*/
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paQeueu/SignIn.dart';
import 'package:paQeueu/page3.dart';

import './home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController idNumber = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController course = TextEditingController();
  TextEditingController phnNumber = TextEditingController();

  Future register() async {
    var url = "http://192.168.43.33/paqueue_project/public/api/students/create";
    var response = await http.post(url, body: {
      "idNumber": idNumber.text,
      "fullName": fullName.text,
      "password": password.text,
      "course": course.text,
      "phnNumber": phnNumber.text,
    });
    var data = json.decode(response.body);
    if (data == "error") {
      Fluttertoast.showToast(
          msg: "This user already exist",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue[200],
          textColor: Colors.black,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Registered",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue[200],
          textColor: Colors.black,
          fontSize: 16.0);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(children: <Widget>[
        new Container(
          margin: const EdgeInsets.fromLTRB(50, 200, 50, 20),
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10),
                AppBar(
                  toolbarHeight: 25,
                  elevation: 00.0,
                  title: Text(
                    'Student Registration ',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.blue[900],
                ),
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
                              controller: fullName,
                              decoration: InputDecoration(
                                labelText: "Enter Full Name",
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
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              controller: course,
                              decoration: InputDecoration(
                                labelText: "Enter Course",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              controller: phnNumber,
                              decoration: InputDecoration(
                                labelText: "Enter Phone Number",
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
                                  'Sign Up',
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                onPressed: () {
                                  register();
                                },
                              )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Text('Already have an account?'),
                              FlatButton(
                                textColor: Colors.red,
                                child: Text(
                                  'Sign In',
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
