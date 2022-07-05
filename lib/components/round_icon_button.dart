import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        fillColor: Color(0xFF4C4F5E),
        elevation: 10,
        constraints: BoxConstraints.tightFor(width: 56, height: 56),
        shape: CircleBorder(),
        onPressed: onPressed);
  }
}
