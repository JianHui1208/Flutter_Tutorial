import 'package:flutter/material.dart';
import 'Controller/question_controller.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuestionController question = QuestionController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool isCorrect = false;

  int counter = 0;

  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = question.getAnswer();
    if (correctAnswer == userPickedAnswer) {
      isCorrect = true;
    }

    setState(() {
      if (isCorrect) {
        scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
      }

      isCorrect = false;

      if (question.isFinished()) {
        Alert(
                context: context,
                title: "FINISH",
                desc: "Congratulations! You have reached the end of the quiz.")
            .show();

        question.resetCounter();
        scoreKeeper.clear();
      } else {
        question.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        flex: 7,
        child: Center(
          child: Text(
            question.getQuestion(),
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.green),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  shape: MaterialStateProperty.resolveWith(
                      (states) => const BeveledRectangleBorder())),
              onPressed: () {
                checkAnswer(true);
              },
              child: const Text('True')),
        ),
      ),
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.resolveWith((states) => Colors.red),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  shape: MaterialStateProperty.resolveWith(
                      (states) => const BeveledRectangleBorder())),
              onPressed: () {
                checkAnswer(false);
              },
              child: const Text('False')),
        ),
      ),
      Row(
        children: scoreKeeper,
      ),
    ]);
  }
}
