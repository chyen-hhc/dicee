import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int lDice = 1;
  int rDice = 1;
  void getRanDice() {
    setState(() {
      lDice = Random().nextInt(6) + 1;
      rDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              getRanDice();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.blue,
              onSurface: Colors.green,
            ),
            child: Image.asset('images/dice$lDice.png'),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              getRanDice();
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.blue),
            child: Image.asset('images/dice$rDice.png'),
          ),
        ),
      ],
    );
  }
}
