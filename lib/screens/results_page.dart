import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/squircle_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/rendering.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultRemark,
      required this.interpretation});

  final String bmiResult, resultRemark, interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  textAlign: TextAlign.left,
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SquircleCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultRemark.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kExtraExtraLargeTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 're-calculate')
          ],
        ),
      ),
    );
  }
}
