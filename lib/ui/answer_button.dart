import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
 
  final bool answer;
 
 // add signature to a function to enable anonymous function as a param
  final VoidCallback _onTap;
 
 // enable anonymous function as paramater
  AnswerButton(this.answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
              child: new Material(
                  // False button
                  color: this.answer == true ? Colors.greenAccent : Colors.redAccent,
                  child: new InkWell(
                      onTap: () => _onTap(), // enable anonymous function as a parameter
                      child: new Center(
                        child: new Container(
                          child: new Text(this.answer == true ? "True": "False"),
                        ),
                      ))));
  }
}
