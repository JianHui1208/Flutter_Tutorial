import 'dart:math';

import 'package:flutter/material.dart';

int leftDice = 1;
int rightDice = 2;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void randomNumber() {
  leftDice = Random().nextInt(6) + 1;
  rightDice = Random().nextInt(6) + 1;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset('assets/images/dice$leftDice.png'),
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                  print("object12");
                },
                child: Image.asset('assets/images/dice$rightDice.png'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
