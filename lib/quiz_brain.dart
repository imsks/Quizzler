import 'question.dart';

class QuizBrain {
  int _queNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.',
        a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.',
        a: true),
    Question(q: 'Some cats are actually allergic to humans',
        a: true),
    Question(q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(q: 'Google was originally called \"Backrub\".',
        a: true),
  ];

  void nextQuestionNumber() {
    if(_queNumber < _questionBank.length -1) {
      _queNumber++;
    }
  }

  String getQuestionBank() {
    return _questionBank[_queNumber].questionText;
  }

  bool getAnswer() {
    return _questionBank[_queNumber].answerText;
  }

  bool isFinished() {
    if (_queNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _queNumber = 0;
  }
}