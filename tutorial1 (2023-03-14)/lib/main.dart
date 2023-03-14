import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      backgroundColor: Colors.cyan,
      body: SafeArea(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/diamond.jpg'),
                radius: 70.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("William",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Students",
                    style:
                        TextStyle(fontSize: 30, fontStyle: FontStyle.italic)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Software Engineer",
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.normal)),
              ),
              Card(
                  child: SizedBox(
                width: 300,
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+6012-1234567'),
                ),
              )),
              Card(
                  child: SizedBox(
                width: 300,
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('One-line with trailing widget'),
                ),
              )),
            ]),
      )),
    ));
  }
}
