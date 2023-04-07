import 'package:flutter/material.dart';
import 'Screen/input_pages.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark()
          .copyWith(appBarTheme: const AppBarTheme(color: Color(0xFF0C112D))),
      home: const InputPages(),
    );
  }
}
