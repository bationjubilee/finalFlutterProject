import 'package:flutter/material.dart';
import 'package:paQeueu/SignIn.dart';
import './citc.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PickCourse(),
    );
  }
}

class PickCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: IconButton(
              icon: Image.asset(
                'assets/images/menu.png',
                fit: BoxFit.cover,
              ),
              onPressed: () {
                print("asdf");
              }),
          actions: [
            Container(
              margin: EdgeInsets.all(5),
              width: 80,
              child: Image.asset(
                'assets/images/profile.png',
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 50,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) {
                                  return Citc();
                                },
                              ),
                            );
                          },
                          child: Text("CITC"),
                          color: Colors.blue[900],
                          textColor: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('CEA'),
                          color: Colors.blue[900],
                          textColor: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('COT'),
                          color: Colors.blue[900],
                          textColor: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('CSTE'),
                          color: Colors.blue[900],
                          textColor: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('CSM'),
                          color: Colors.blue[900],
                          textColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Column(
                  children: [
                    Text(
                      'University of',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                    Text(
                      'Science and Technology',
                      style: TextStyle(color: Colors.blue[900], fontSize: 20),
                    ),
                    Text(
                      'of Southern Technology',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
