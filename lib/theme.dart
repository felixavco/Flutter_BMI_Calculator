import 'package:flutter/material.dart';

//Colors
final Color kPrimaryColor = Color(0xff0a0e21);
final Color kSecondaryColor = Color(0xff1d1E33);
final Color kButtonsColor = Color(0xffeb1555);
final Color kInactiveCardColor = Color(0xff111328);
final Color kGray100 = Color(0xff8D8E98);
//Text styles
final TextStyle kCardTextStyle = TextStyle(fontSize: 18, color: kGray100);
final TextStyle kValuesTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

final double kBottomContainerHeight = 80;

ThemeData appTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kPrimaryColor,
);
