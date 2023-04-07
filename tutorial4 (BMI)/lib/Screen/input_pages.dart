import 'package:flutter/material.dart';
import '../Layout/reusable_card.dart';
import '../Screen/result_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color inactiveColor = Color(0xFF111328);
const Color activeCardColor = Color(0xFF1D1E33);

enum Genders {
  male,
  female,
}

class InputPages extends StatefulWidget {
  const InputPages({Key? key}) : super(key: key);

  @override
  State<InputPages> createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {
  Genders? selectedGender;
  double height = 150;
  int weight = 50;
  int age = 20;
  double bmiResules = 0;
  String keyword = "";

  void countBMI() {
    bmiResules = weight / (height * height) * 10000;
    if (bmiResules < 18.5) {
      keyword = 'it falls within the underweight range.';
    } else if (bmiResules >= 18.5 || bmiResules <= 24.9) {
      keyword = 'it falls within the normal or healthy weight range.';
    } else if (bmiResules >= 25 || bmiResules <= 29.9) {
      keyword = 'it falls within the overweight range.';
    } else if (bmiResules >= 30 || bmiResules <= 34.9) {
      keyword = 'it falls within the obese range.';
    } else if (bmiResules >= 35) {
      keyword = 'it falls within the extremely obese range.';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPages(
          result: bmiResules.toStringAsFixed(2),
          keywords: keyword,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: Column(
                        children: const [
                          Icon(FontAwesomeIcons.mars, size: 80.0),
                          Text("MALE")
                        ],
                      ),
                      cardColor: selectedGender == Genders.male
                          ? activeCardColor
                          : inactiveColor,
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Genders.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: Column(
                        children: const [
                          Icon(FontAwesomeIcons.venus, size: 80.0),
                          Text("FEMALE")
                        ],
                      ),
                      cardColor: selectedGender == Genders.female
                          ? activeCardColor
                          : inactiveColor,
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Genders.female;
                      });
                    },
                  ),
                ),
              ],
            ),
            Center(
              child: Expanded(
                child: ReusableCard(
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
                          Text(
                            height.round().toString(),
                            style: const TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 130,
                        max: 200,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue;
                          });

                          print(height.round().toString());
                        },
                      )
                    ],
                  ),
                  cardColor: activeCardColor,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: Column(
                        children: [
                          const Text("WEIGHT"),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Colors.red, // set the background color
                                  shape:
                                      const CircleBorder(), // make it circular
                                  padding: const EdgeInsets.all(
                                      16.0), // give it some padding
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(FontAwesomeIcons.minus,
                                    size: 16.0, color: Colors.white),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Colors.red, // set the background color
                                  shape:
                                      const CircleBorder(), // make it circular
                                  padding: const EdgeInsets.all(
                                      16.0), // give it some padding
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(FontAwesomeIcons.plus,
                                    size: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      cardColor: activeCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: Column(
                        children: [
                          const Text("AGE"),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Colors.red, // set the background color
                                  shape:
                                      const CircleBorder(), // make it circular
                                  padding: const EdgeInsets.all(
                                      16.0), // give it some padding
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(FontAwesomeIcons.minus,
                                    size: 16.0, color: Colors.white),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Colors.red, // set the background color
                                  shape:
                                      const CircleBorder(), // make it circular
                                  padding: const EdgeInsets.all(
                                      16.0), // give it some padding
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(FontAwesomeIcons.plus,
                                    size: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      cardColor: activeCardColor,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 80.0,
              color: const Color(0xFFEB1555),
              child: TextButton(
                onPressed: () {
                  countBMI();
                },
                child: const Center(
                  child: Text(
                    'CALCULATE',
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
