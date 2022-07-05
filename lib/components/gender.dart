import 'package:flutter/cupertino.dart';

import '../constants.dart';

class Gender extends StatelessWidget {
  final String text;
  final IconData faIcon;

  Gender({this.text, this.faIcon});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(this.faIcon, size: kIconSize),
      SizedBox(height: 15),
      Text(this.text, style: kLabelTextStyle)
    ]);
  }
}
