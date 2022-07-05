import 'package:flutter/material.dart';

import 'bmi_theme.dart';
import 'results_page.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());
ThemeBuilder themeBuilder = ThemeBuilder();

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/calculate': (context) => ResultsPage()
      },
      theme: themeBuilder.getTheme(),
    );
  }
}
