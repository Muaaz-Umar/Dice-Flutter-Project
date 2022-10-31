// ignore_for_file:prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdicenum = 1;
  int rightdicenum = 1;
  int r = 1;
  int g = 1;
  int b = 1;
  void foo() {
    setState(() {
      leftdicenum = (Random().nextInt(6) + 1).toInt();
      rightdicenum = (Random().nextInt(6) + 1).toInt();
      r = (Random().nextInt(255) + 1).toInt();
      g = (Random().nextInt(255) + 1).toInt();
      b = (Random().nextInt(255) + 1).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, r, g, b),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, r, g, b),
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: foo,
                      child: Image.asset(
                        'images/dice$leftdicenum.png',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: foo,
                      child: Image.asset(
                        'images/dice$rightdicenum.png',
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Creater',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                'Muaaz Umar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
