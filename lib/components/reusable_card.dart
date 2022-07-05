import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onGesture;
  ReusableCard({@required this.color, this.cardChild, this.onGesture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onGesture,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
