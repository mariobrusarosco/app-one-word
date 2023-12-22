import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/images/mario.jpeg",
                ),
              ),
              Text(
                "One Word Game",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Montserrat",
                ),
              ),
              Text(
                "Make your friends guess with only one word",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  letterSpacing: 0.1,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      "Coming Soon!",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
// Container(
// // margin: EdgeInsets.only(top: 50.0),
// padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
// color: Colors.orange,
// child: Container(
// color: Colors.orange,
// child: Text('Header'),
// ),
// ),
// Container(
// padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
// color: Colors.red,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Container(
// child: Text('body'),
// ),
// ],
// ),
// ),
// ]),
