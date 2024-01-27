import 'package:one_word/learning-stuff/quiz/question.dart';

class QuizBrain {
  int _currentQuestionNumber = 0;

  List<Question> _questionBank = [
    Question(
        question: "You can lead a cow down stairs but not up stairs.",
        answer: false),
    Question(
        question: "Approximately one quarter of human bones are in the feet",
        answer: true),
    Question(question: "A slug's blood is green.", answer: true)
  ];

  String getQuestionText() {
    return _questionBank[_currentQuestionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_currentQuestionNumber].questionAnswer;
  }

  nextQuestion() {
    if (_currentQuestionNumber < _questionBank.length - 1) {
      _currentQuestionNumber++;
    }
  }
}
