import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
            title:
                const Text('Ask Me Anything', style: TextStyle(fontSize: 30)),
            backgroundColor: Colors.blue[900]),
        body: const MagicBool(),
      ),
    );
  }
}

class MagicBool extends StatefulWidget {
  const MagicBool({Key? key}) : super(key: key);

  @override
  _MagicBoolState createState() => _MagicBoolState();
}

class _MagicBoolState extends State<MagicBool> {
  int ballImageNumber = 1;
  void updateBallImage() {
    setState(() {
      ballImageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballImageNumber.png'),
        onPressed: updateBallImage,
      ),
    );
  }
}
