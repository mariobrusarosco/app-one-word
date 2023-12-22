import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/images/mario.jpeg",
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
