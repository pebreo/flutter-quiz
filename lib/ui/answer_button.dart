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
                          decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.white, width: 4.0)
                          ),
                          padding: new EdgeInsets.all(15.0),
                          child: new Text(this._answer == true ? "True": "False", 
                          style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                        ),
                      ))));
  }
}
