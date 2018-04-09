import './question.dart';

class Quiz {
  // private because of underscore
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  
  Quiz(this._questions) {
    _questions.shuffle();
  }

  // getter
  List<Question> get questions => _questions;

  // getter
  int get length => _questions.length;

  //getter
  int get questionNumber => _currentQuestionIndex+1;

  // getter syntax - we use a getter because _score is private
  int get score => _score;

  Question get nextQuestion {
    _currentQuestionIndex++;
    if(_currentQuestionIndex >= this.length) return null;
    return _questions[_currentQuestionIndex];
  }
  void answer(bool isCorrect) {
    if(isCorrect) _score++;
  }
}

/*
Quiz quiz = new Quiz([new Question("question", true)]);
quiz._score
*/