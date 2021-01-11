import 'package:flutter/material.dart';
import './page3.dart';

class QueueUpdate extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
