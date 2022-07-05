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
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                onGesture: updated,
                color: selectedGender == Genders.male
                    ? kActiveCardColor
                    : kCardColor,
                cardChild: Gender(text: "MALE", faIcon: FontAwesomeIcons.mars),
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
                    Gender(text: "FEMALE", faIcon: FontAwesomeIcons.venus),
              ),
            ),
          ]),
        ),
        Expanded(
          child: ReusableCard(
              color: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberStyle),
                        Text('cm', style: kLabelTextStyle),
                      ]),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x1fEB1555),
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Colors.pink,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (selectedValue) {
                          setState(() {
                            this.height = selectedValue.toInt();
                          });
                        }),
                  )
                ],
              )),
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
