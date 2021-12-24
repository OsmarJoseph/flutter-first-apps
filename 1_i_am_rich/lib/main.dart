import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text('I Am Rich'),
                backgroundColor: Colors.blueGrey[900]),
            backgroundColor: Colors.blueGrey,
            body: const Center(
                child: Image(image: AssetImage("images/diamond.png")))));
  }
}

void main() => runApp(const MyApp());
