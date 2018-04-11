import 'package:flutter/material.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';

// a widget
class QuizPage extends StatefulWidget {
  /*
  A stateful widget is immuatable but we connect a STATE that changes
  In this case, the state that we are connecting is the QuizPageState.
  This allows use to rebuild our visuals/UI.
  */

  // connect the widget to the state
  @override
  State createState() => new QuizPageState();
}

// a state
class QuizPageState extends State<QuizPage> {

  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Elon musk is human", false),
    new Question("Pizza is health", false),
    new Question("Flutter is awesome", true),
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool showOverlay = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;

  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      // stacks widgets on top of each other
      children: <Widget>[
        new Column(// this is our main page
            children: <Widget>[
              new AnswerButton(true, () => print('you answered true')),
              new QuestionText(questionText, questionNumber),
              new AnswerButton(false, () => print('you answered false')),
          ]
        ),
        showOverlay == true ? new CorrectWrongOverlay(false) : new Container(),
      ],
    );
  }
}
