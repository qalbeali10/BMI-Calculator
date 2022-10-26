// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, non_constant_identifier_names, avoid_print, unused_local_variable

import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/iconcontent.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  // void updateColor(Gender gender) {
  //   if (gender==Gender.male) {  // gender = Gender.male
  //     if (maleCardColor == inActiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inActiveCardColor;
  //     } else {
  //       maleCardColor = inActiveCardColor;
  //     }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleCardColor == inActiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inActiveCardColor;
  //     } else {
  //       femaleCardColor = inActiveCardColor;
  //     }
  //   }
  // }
  Gender? gender;
  int height = 180;
  int weight = 60;
  int age = 19;
  //int? number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.redAccent,
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: ReUsabelCard(
                      colour: gender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: ReUsabelCard(
                      colour: gender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ReUsabelCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT', style: kLablTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumTextStyle,
                            ),
                            Text(
                              "cm",
                              style: kLablTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbColor: Color(0xffeb1555),
                              overlayColor: Color(0x29eb1555),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Color(0xff8d8e98),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0)),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ReUsabelCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLablTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // number = weight;
                                  weight--;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  color: Color(0xff8d8e98).withOpacity(0.1),
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Color(0xff8d8e98),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // number = weight;
                                  weight++;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xff8d8e98).withOpacity(0.1),
                                  shape: BoxShape.circle,
                                  //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color(0xff8d8e98),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsabelCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLablTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  color: Color(0xff8d8e98).withOpacity(0.1),
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Color(0xff8d8e98),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xff8d8e98).withOpacity(0.1),
                                  shape: BoxShape.circle,
                                  //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color(0xff8d8e98),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                calculatorBrain calc =
                    calculatorBrain(height: height, weight: weight);
                Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),resultText: calc.getResult(),interpretation: calc.getInterpretation(),)));
              },
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 10),
                height: 80,
                width: double.infinity,
                color: bottomContainerColor,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
