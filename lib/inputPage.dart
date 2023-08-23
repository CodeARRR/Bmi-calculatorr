// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_claculator/bottombutton.dart';
import 'package:bmi_claculator/results.dart';
import 'package:bmi_claculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_claculator/ReuseableCard.dart';
import 'package:bmi_claculator/cardWidget.dart';
import 'package:bmi_claculator/constant.dart';
import 'calculator_brain.dart';

import 'constant.dart';

enum Gender {
  male,
  femal,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender;
  int height = 180;
  int weight = 50;
  int age = 10;
  // Color mailCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (mailCardColor == inactiveCardColor) {
  //       mailCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       mailCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (selectedGender == Gender.femal) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       mailCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI calculator')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(
                  onpressed: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  cardChild: CardWidget(
                    icon: FontAwesomeIcons.mars,
                    title: 'MALE',
                    style: KLabelTextStyle,
                  ),
                  color: selectGender == Gender.male
                      ? KInactivecolor
                      : KActivecolor,
                )),
                Expanded(
                    child: ReuseableCard(
                  onpressed: () {
                    setState(() {
                      selectGender = Gender.femal;
                    });
                  },
                  cardChild: CardWidget(
                    icon: FontAwesomeIcons.venus,
                    title: 'FEMALE',
                    style: KLabelTextStyle,
                  ),
                  color: selectGender == Gender.femal
                      ? KInactivecolor
                      : KActivecolor,
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(
                  color: KActivecolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'HEIGHT',
                        style: KLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberStyle,
                          ),
                          Text(
                            'cm',
                            style: KLabelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xff8d8e98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xffeb1555),
                            overlayColor: Color(0x29eb1555),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30,
                            )),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'weight',
                        style: KLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: KActivecolor,
                )),
                Expanded(
                    child: ReuseableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: KLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      )
                    ],
                  ),
                  color: KActivecolor,
                )),
              ],
            )),
            BottomButton(
                onTap: () {
                  Calculate clac = Calculate(height: height, weight: weight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultsPage(
                                result: clac.result(),
                                bmiResult: clac.getText(),
                                interpretation: clac.getAdvise(),
                              )));
                },
                buttonTitle: 'Calculate'),
          ],
        ));
  }
}
