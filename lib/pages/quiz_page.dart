import 'package:flutter/material.dart';




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
          new Expanded(
              child: new Material(
                  // True button
                  color: Colors.greenAccent,
                  child: new InkWell(
                      onTap: () => print("you answered true"),
                      child: new Center(
                        child: new Container(
                          child: new Text("True"),
                        ),
                      )))),
                                new Expanded(
              child: new Material(
                  // False button
                  color: Colors.redAccent,
                  child: new InkWell(
                      onTap: () => print("you answered False"),
                      child: new Center(
                        child: new Container(
                          child: new Text("False"),
                        ),
                      )))),
        ])
      ],
    );
  }
}
