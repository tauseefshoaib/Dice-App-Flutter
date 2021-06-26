import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.red[900],
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
  int diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
