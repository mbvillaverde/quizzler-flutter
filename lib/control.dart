import 'package:quizzler/models/question.dart';

class QuizControl {
  // underscores make the attribute of class private
  int _current = 0;

  List<Question> _questions = [
    Question(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'A slug\'s blood is green.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
      questionAnswer: true,
    ),
    Question(
      questionText: 'It is illegal to pee in the Ocean in Portugal.',
      questionAnswer: true,
    ),
    Question(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Question(
      questionText:
          'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'The total surface area of two human lungs is approximately 70 square metres.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Google was originally called \"Backrub\".',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      questionAnswer: true,
    ),
  ];

  void getNextQuestion() {
    if (_current < _questions.length - 1) {
      _current++;
    }
  }

  String getQuestionText() {
    return _questions[_current].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_current].questionAnswer;
  }

  bool isFinished() {
    return _current == _questions.length - 1;
  }

  void reset() {
    _current = 0;
  }
}
