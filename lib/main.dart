import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
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
  int ltb=1;
  int rtb=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ltb=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$ltb.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
               setState(() {
                 rtb=Random().nextInt(6)+1;
               });
              },
              child: Image.asset('images/dice$rtb.png'),
            ),
          ),
        ],
      ),
    );
  }
}

