import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //the expanded widget is used inside a row or column and takes the full main axis space availabe
          flex: 2,
          child: FlatButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {
              print('left button pressed');
            },
          ),
        ),
        Expanded(
          //the expanded widget is used inside a row or column and takes the full main axis space availabe
          child: FlatButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {
              print('right Button Pressed');
            },
          ),
        ),
      ],
    );
  }
}
