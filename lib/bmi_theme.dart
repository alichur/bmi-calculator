import 'package:flutter/material.dart';

class ThemeBuilder {
  getTheme() {
    return ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21));
  }
}
