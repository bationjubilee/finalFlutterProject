import 'package:flutter/material.dart';
import './page3.dart';
import './queue_update.dart';

class Home extends StatefulWidget {
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
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              width: 350,
              height: 200,
              color: Colors.yellow,
              child: Column(
                children: [
                  Text(
                    'CITC',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Clearance Sign',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'DEAN 1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    '23',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Queue no.',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                              return Page3();
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
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) {
                              return QueueUpdate();
                            },
                          ),
                        );
                      },
                      color: Colors.blue[900],
                      textColor: Colors.white,
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
