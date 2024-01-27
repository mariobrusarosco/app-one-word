import 'package:flutter/material.dart';
import 'package:one_word/learning-stuff/quiz/quiz.dart';

void main() => runApp(QuizUdemy());

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
