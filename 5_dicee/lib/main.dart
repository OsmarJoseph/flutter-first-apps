import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: const Text('Dicee'), backgroundColor: Colors.red),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final diceNumbers = {
    'left': 1,
    'right': 1,
  };

  void Function() updateDice() {
    return () {
      setState(() {
        diceNumbers['left'] = Random().nextInt(6) + 1;
        diceNumbers['right'] = Random().nextInt(6) + 1;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: updateDice(),
                child: Image.asset("images/dice${diceNumbers['left']}.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                onPressed: updateDice(),
                child: Image.asset("images/dice${diceNumbers['right']}.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
