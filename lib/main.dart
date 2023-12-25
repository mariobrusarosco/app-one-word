import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceUdemy());
}

class DiceUdemy extends StatefulWidget {
  @override
  _DiceUdemyState createState() => _DiceUdemyState();
}

class _DiceUdemyState extends State<DiceUdemy> {
  var leftDiceValue = 1;
  var rightDiceValue = 1;

  @override
  Widget build(BuildContext context) {
      int randomDiceValue () {
        return Random().nextInt(6) + 1;
      }

      return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.deepOrangeAccent,
            body: SafeArea(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            leftDiceValue = randomDiceValue();
                          });
                        },
                        child: Image.asset(
                          "assets/images/dice$leftDiceValue.png",
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            rightDiceValue = randomDiceValue();
                          });
                        },
                        child: Image.asset(
                          "assets/images/dice$rightDiceValue.png",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              title: Text("Dices"),
              backgroundColor: Colors.orangeAccent,
            ),
          ));
    }
  }
}

class MyApp {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: DiceUdemy(),
        appBar: AppBar(
          title: Text("Dices"),
          backgroundColor: Colors.orangeAccent,
        ),
      ),
    );
  }
}

class OneWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.access_time_rounded,
                    color: Colors.pink,
                  ),
                  title: Text(
                    "Coming Soon!",
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
