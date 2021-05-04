import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCircleAvatar(),
              buildUserText(),
              buildPosition(),
              buildHLine(),
              buildPhoneInfo(),
              buildSpacer(),
              buildEmail()
            ],
          ))),
    );
  }

  Text buildUserText() {
    return Text(
      'Jim Carter',
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'Anton',
          fontStyle: FontStyle.normal,
          fontSize: 24.0),
    );
  }

  Text buildPosition() {
    return Text(
      'Information Officer',
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Anton',
        fontStyle: FontStyle.normal,
        fontSize: 16,
        letterSpacing: 2.0,
      ),
    );
  }

  CircleAvatar buildCircleAvatar() {
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage('images/headshot.jpg'),
    );
  }

  Card buildPhoneInfo() {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
        child: ListTile(
            leading: Icon(Icons.phone, color: Colors.teal),
            title: Text(
              '559-241-6243',
              style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'Anton',
                  fontSize: 16.0,
                  letterSpacing: 2.0),
            )));
  }

  Card buildEmail() {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
        child: ListTile(
            leading: Icon(Icons.email, color: Colors.teal),
            title: Text(
              'jcarter@wwd.ca.gov',
              style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'Anton',
                  fontSize: 16.0,
                  letterSpacing: 2.0),
            )));
  }

  Container buildSpacer() {
    return Container(
      child: SizedBox(
        width: 5.0,
        height: 5.0,
      ),
    );
  }

  Container buildHLine() {
    return Container(
      child: SizedBox(
        height: 20.0,
          width: 150,
          child: Divider(
            color: Colors.teal.shade100,
          ),
      )
    );
  }

}
