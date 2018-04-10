import './question.dart';

class Quiz {
  // private because of underscore
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  
  Quiz(this._questions) {
    _questions.shuffle();
  }

  // getters
  List<Question> get questions => _questions;
  int get length => _questions.length;
  int get questionNumber => _currentQuestionIndex+1;
  int get score => _score;

  // getter
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