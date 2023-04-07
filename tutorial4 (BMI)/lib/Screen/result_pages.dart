import 'package:flutter/material.dart';
import '../Layout/reusable_card.dart';

const Color inactiveColor = Color(0xFF111328);

class ResultPages extends StatelessWidget {
  final String result;
  final String keywords;

  const ResultPages({Key? key, required this.result, required this.keywords})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const Center(
                  child: Text(
                    "Your Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ReusableCard(
                  cardChild: Column(
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                '$result',
                                style: const TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                '$keywords',
                                style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  cardColor: inactiveColor,
                ),
              ],
            ),
            Container(
              height: 80.0,
              color: const Color(0xFFEB1555),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
