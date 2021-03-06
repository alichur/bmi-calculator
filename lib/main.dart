import 'package:flutter/material.dart';

import 'bmi_theme.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());
ThemeBuilder themeBuilder = ThemeBuilder();

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: themeBuilder.getTheme(),
    );
  }
}
