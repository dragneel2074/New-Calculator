import 'package:flutter/material.dart';
import 'HomePage.dart';

class numbers extends StatelessWidget {
  final Function callback;
  numbers({this.callback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: NewWidget(newnumber: 'DEL', colorr: Colors.red, callback: callback,)),
                Expanded(child: NewWidget(newnumber: 'C', colorr: Colors.green, callback: callback,)),
                Expanded(
                    child: NewWidget(newnumber: '%', colorr: Colors.deepPurple, callback: callback)),
                Expanded(
                    child: NewWidget(newnumber: '/', colorr: Colors.deepPurple, callback: callback)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: NewWidget(newnumber: '1', colorr: Colors.white, callback: callback)),
                Expanded(child: NewWidget(newnumber: '2', colorr: Colors.white, callback: callback)),
                Expanded(child: NewWidget(newnumber: '3', colorr: Colors.white, callback: callback)),
                Expanded(
                    child: NewWidget(newnumber: '*', colorr: Colors.deepPurple, callback: callback)),
              ],
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(child: NewWidget(newnumber: '4', colorr: Colors.white, callback: callback)),
              Expanded(child: NewWidget(newnumber: '5', colorr: Colors.white, callback: callback)),
              Expanded(child: NewWidget(newnumber: '6', colorr: Colors.white, callback: callback)),
              Expanded(
                  child: NewWidget(newnumber: '-', colorr: Colors.deepPurple, callback: callback,)),
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(child: NewWidget(newnumber: '7', colorr: Colors.white, callback: callback)),
              Expanded(child: NewWidget(newnumber: '8', colorr: Colors.white, callback: callback)),
              Expanded(child: NewWidget(newnumber: '9', colorr: Colors.white, callback: callback)),
              Expanded(
                  child: NewWidget(newnumber: '+', colorr: Colors.deepPurple, callback: callback)),
            ]),
          ),
          Expanded(
            child: Row(children: [
              Expanded(child: NewWidget(newnumber: '0', colorr: Colors.white, callback: callback)),
              Expanded(child: NewWidget(newnumber: '.', colorr: Colors.white, callback: callback)),
              Expanded(child: NewWidget(newnumber: 'ANS', colorr: Colors.white, callback: callback)),
              Expanded(
                  child: NewWidget(newnumber: '=', colorr: Colors.deepPurple, callback: callback)),
            ]),
          )
        ],
      ),
    ));
  }
}

class NewWidget extends StatelessWidget {
  double fontsize = 20;
  double padding = 5;
  double border = 10;
  final Color colorr;
  final String newnumber;
  final Function callback;
  NewWidget({
    this.colorr,
    this.newnumber,
    this.callback
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(border),
        child: Container(
          color: colorr,
          child: Center(
            child: FlatButton(
              child: Text(
                newnumber,
                style: TextStyle(fontSize: fontsize),
              ),
              onPressed: () {
                callback(newnumber);
              },
            ),
          ),
        ),
      ),
    );
  }
}
