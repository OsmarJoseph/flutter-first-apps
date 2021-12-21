import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text('I Am Poor'),
                backgroundColor: Colors.blue[300]),
            backgroundColor: Colors.blue[100],
            body: const Center(
                child: Image(image: AssetImage("images/coal.png")))));
  }
}

void main() => runApp(const MyApp());
