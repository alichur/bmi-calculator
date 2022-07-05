import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/action_button.dart';
import '../components/reusable_card.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text('Your results',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal', style: TextStyle(color: Colors.green)),
                    Text(
                      '21.3',
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                    Text('low bmi')
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonTitle: 'RECALCULATE')
        ],
      ),
    );
  }
}
