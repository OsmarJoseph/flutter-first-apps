import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/me.jpeg'),
                    ),
                    const Text("Osmar Joseph Wilsinski",
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 35.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text("SENIOR DEVELOPER",
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade100,
                          letterSpacing: 2.5,
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(
                        color: Colors.teal.shade100,
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      child: Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                            leading: const Icon(
                              Icons.phone,
                              color: Colors.teal,
                              size: 20.0,
                            ),
                            title: Text(
                              '+55 41 99782-8879',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                                color: Colors.teal.shade900,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      child: Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                            leading: const Icon(
                              Icons.email,
                              color: Colors.teal,
                              size: 20.0,
                            ),
                            title: Text(
                              'osmarjoseph2013@hotmail.com',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                                color: Colors.teal.shade900,
                              ),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ))));
  }
}

void main() => runApp(const MyApp());
