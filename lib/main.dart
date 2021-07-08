import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Center(child: Text('Ludo')),
          backgroundColor: Colors.brown,
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
  int leftDiceVariable = 1;
  int rightDiceVariable = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  leftDiceVariable = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceVariable.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  rightDiceVariable = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceVariable.png'),
            ),
          ),
        ],
      ),
    );
  }
}
