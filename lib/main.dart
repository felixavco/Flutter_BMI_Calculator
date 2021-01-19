import 'package:flutter/material.dart';

import 'screens/InputPage.dart';
import 'theme.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: InputPage(),
    );
  }
}
