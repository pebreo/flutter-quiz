import 'package:flutter/material.dart';
import '../ui/answer_button.dart';


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
  @override
  Widget build(BuildContext context) {
    return new Stack(
      // stacks widgets on top of each other
      children: <Widget>[
        new Column(// this is our main page
            children: <Widget>[
              new AnswerButton(true, () => print('you answered true')),
              new AnswerButton(false, () => print('you answered false')),
        ])
      ],
    );
  }
}
