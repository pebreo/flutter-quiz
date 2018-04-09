import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
 
  bool answer;
  AnswerButton(this.answer);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
              child: new Material(
                  // False button
                  color: this.answer == true ? Colors.greenAccent : Colors.redAccent,
                  child: new InkWell(
                      onTap: () => print("you answered False"),
                      child: new Center(
                        child: new Container(
                          child: new Text(this.answer == true ? "True": "False"),
                        ),
                      ))));
  }
}