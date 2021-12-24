import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                    Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  ]),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                
              ]),
            )));
  }
}

void main() => runApp(const MyApp());
