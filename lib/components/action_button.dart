import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({this.onTap, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Center(child: Text(buttonTitle, style: klargeButtonText)),
          width: double.infinity,
          height: 70,
          margin: EdgeInsets.only(top: 10),
          color: Colors.pink),
    );
  }
}
