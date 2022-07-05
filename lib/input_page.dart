import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'gender.dart';

enum Genders { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genders selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                onGesture: updated,
                color: selectedGender == Genders.male
                    ? kActiveCardColor
                    : kCardColor,
                cardChild: Gender(text: "Male", faIcon: FontAwesomeIcons.mars),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onGesture: () {
                  setState(
                    () {
                      selectedGender = Genders.female;
                    },
                  );
                },
                color: selectedGender == Genders.female
                    ? kActiveCardColor
                    : kCardColor,
                cardChild:
                    Gender(text: "Female", faIcon: FontAwesomeIcons.venus),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(color: kCardColor),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(color: kCardColor),
            ),
            Expanded(
              child: ReusableCard(color: kCardColor),
            ),
          ]),
        ),
      ]),
    );
  }

  updated() {
    setState(
      () {
        selectedGender = Genders.male;
      },
    );
  }
}
