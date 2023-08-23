import 'package:bmi_claculator/ReuseableCard.dart';
import 'package:bmi_claculator/bottombutton.dart';
import 'package:bmi_claculator/constant.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;

  final String interpretation;
  final String? result;

  const ResultsPage(
      {super.key,
      this.result,
      required this.bmiResult,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CALCULATED RESULTS'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    'YOUR RESULTS',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ReuseableCard(
                color: KActivecolor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result.toString(),
                        style: KResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMItextStyle,
                      ),
                      Text(
                        interpretation,
                        style: KbodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'Recalculate')
          ],
        ));
  }
}
