import 'package:one_word/learning-stuff/quiz/question.dart';

class QuizBrain {
  int _currentQuestionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText: "You can lead a cow down stairs but not up stairs.",
        questionAnswer: false),
    Question(
        questionText:
            "Approximately one quarter of human bones are in the feet",
        questionAnswer: true),
    Question(questionText: "A slug's blood is green.", questionAnswer: true)
  ];

  String getQuestionText() {
    return _questionBank[_currentQuestionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_currentQuestionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_currentQuestionNumber < _questionBank.length - 1) {
      _currentQuestionNumber++;
    }
  }

  void reset() {
    _currentQuestionNumber = 0;
  }

  bool isFinished() {
    if (_currentQuestionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
