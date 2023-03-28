import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

int number = 1;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const IndexPage(title: 'Ask Me Anything'),
    );
  }
}

class IndexPage extends StatefulWidget {
  const IndexPage({super.key, required this.title});

  final String title;

  @override
  State<IndexPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        margin: const EdgeInsets.all(0.0),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          number = Random().nextInt(5) + 1;
                          if (kDebugMode) {
                            print(number);
                          }
                        });
                      },
                      child: Image.asset('assets/images/ball$number.png')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
