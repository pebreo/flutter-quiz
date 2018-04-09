import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  
  // stateless widgets are immutable so they should have final type
  final bool _answer;
 
 // add signature to a function to enable anonymous function as a param
  final VoidCallback _onTap;
 
 // enable anonymous function as paramater
  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
              child: new Material(
                  // False button
                  color: this._answer == true ? Colors.greenAccent : Colors.redAccent,
                  child: new InkWell(
                      onTap: () => _onTap(), // enable anonymous function as a parameter
                      child: new Center(
                        child: new Container(
                          child: new Text(this._answer == true ? "True": "False"),
                        ),
                      ))));
  }
}
