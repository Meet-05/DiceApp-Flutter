import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text('Dicee'),
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                //the expanded widget is used inside a row or column and takes the full main axis space availabe
                child: FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                //the expanded widget is used inside a row or column and takes the full main axis space availabe
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        changeDice();
                      },
                    );
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: RaisedButton(
                onPressed: () {
                  changeDice();
                },
                child: Text(
                  'Roll',
                  style: TextStyle(fontSize: 25),
                )),
          ),
        ],
      ),
    );
  }
}
