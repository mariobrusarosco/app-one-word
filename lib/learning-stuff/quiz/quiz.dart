import 'package:flutter/material.dart';
import 'package:one_word/learning-stuff/quiz/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

// Quiz App
class _QuizUdemyState extends State<QuizUdemy> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnwser = quizBrain.getQuestionAnswer();

    setState(() {
      Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.")
          .show();

      if (quizBrain.isFinished()) {
        Alert(
          context: context,
          title: "Finished!",
          desc: "You\'ve reached the end of the quiz.",
        ).show();
        quizBrain.reset();
        scoreKeeper = [];

        return;
      }
      if (correctAnwser == userPickedAnswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        quizBrain.getQuestionText(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 150,
                color: Colors.black54,
                padding: EdgeInsets.all(
                  5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        checkAnswer(true);
                      },
                      child: Text(
                        "True",
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        bool correctAnwser = quizBrain.getQuestionAnswer();
                        checkAnswer(false);
                      },
                      child: Text(
                        "False",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1, child: Row(children: scoreKeeper)),
            ]),
      ),
    );
  }
}

class QuizUdemy extends StatefulWidget {
  @override
  _QuizUdemyState createState() => _QuizUdemyState();
}
