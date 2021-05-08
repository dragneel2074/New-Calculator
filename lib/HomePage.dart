import 'package:flutter/material.dart';
import 'numbers.dart';
import 'package:math_expressions/math_expressions.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _history = '';
  var _expression = '';
  String Num = NewWidget().newnumber;


  void numClick(String Num){

    setState(() {

      if (Num == 'C'){
        _expression = "";
        _history = "";
      }
      else if(Num == 'DEL'){
        _expression = _expression.substring(0, _expression.length - 1);
      }
      else if( Num == '='){
        Parser p = Parser();
        Expression exp = p.parse(_expression);
        ContextModel cm = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, cm);
        String neval = eval.toStringAsFixed(2) ;
        _history = _expression;
        _expression = neval.toString();
      }
      else if(Num == 'ANS'){
        _history = "";
      }
      else{
        _expression += Num;
      } });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffc3b9eb),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      _history,
                      style: TextStyle(color: Colors.white70, fontSize: 38),
                    ),
                    padding: EdgeInsets.only(top: 60, left: 60, right:20, bottom: 40),
                    alignment: Alignment.centerRight,
                  ),
                  Container(
                    child: Text(
                      _expression,
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    padding: EdgeInsets.only(top: 20, left: 60, right:20, bottom:60),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
            numbers(callback: numClick),
          ],
        ),
      ),
    );
  }
}
