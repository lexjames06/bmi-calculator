import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kLargeNumberStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'OVERWEIGHT',
                      style: kResultTitle,
                    ),
                    Text(
                      '100',
                      style: kLargeNumberResult,
                    ),
                    Text(
                      'import info',
                      style: kResultDescription,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
