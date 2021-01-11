import 'package:flutter/material.dart';
import 'package:paQeueu/home.dart';


class Citc extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
              child: Column(
                children: [
                  Text(
                    'College of Information and Computing Technology',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) {
                              return Home();
                            },
                          ),
                        );
                      },
                      child: Text("Pick Appointment"),
                      color: Colors.blue[900],
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.blue[900],
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        'Update Queue\nprocess',
                        style: TextStyle(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
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
            ),
          ],
        ),
      ),
    );
  }
}
