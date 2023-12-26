import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

// XYLOPHONE APP
class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create a variable that holds a audio path string plus a color from Colors class
    var audioPath = {
      "audios/note.wav": Colors.red,
      "audios/note2.wav": Colors.orange,
      "audios/note3.wav": Colors.yellow,
      "audios/note4.wav": Colors.green,
      "audios/note5.wav": Colors.teal,
      "audios/note6.wav": Colors.blue,
      "audios/note6.wav": Colors.purple,
    };

    Expanded buildInstrumentTile(
        {required String audioPath, required Color color}) {
      return Expanded(
        child: MaterialButton(
          color: color,
          onPressed: () async {
            print(audioPath);
            final player = AudioPlayer();
            await player.play(AssetSource(audioPath));
          },
        ),
      );
    }

    return MaterialApp(
      title: "Xylophone",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < audioPath.length; i++)
                buildInstrumentTile(
                  audioPath: audioPath.keys.elementAt(i),
                  color: audioPath.values.elementAt(i),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

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

// ONE WORD - STATELESS
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
