import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNum=1,rightButtonNum=6;
  @override
  void randomizedDice(){
    setState(() {
      leftButtonNum = Random().nextInt(6)+1;
      rightButtonNum = Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: (){
                  randomizedDice();
                  print('Left Button Pressed');
                },
                child: Image.asset('images/dice$leftButtonNum.png')
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: (){
                  print('Right Button Pressed');
                  randomizedDice();
                },
                child: Image.asset('images/dice$rightButtonNum.png')
            ),
          ),
        ],
      ),
    );
  }
}
