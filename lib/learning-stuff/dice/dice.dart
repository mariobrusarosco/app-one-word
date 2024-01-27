import 'dart:math';

import 'package:flutter/material.dart';

// DICE APP
class DiceUdemy extends StatefulWidget {
  @override
  _DiceUdemyState createState() => _DiceUdemyState();
}

class _DiceUdemyState extends State<DiceUdemy> {
  var leftDiceValue = 1;
  var rightDiceValue = 1;

  @override
  Widget build(BuildContext context) {
    int randomDiceValue() {
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
