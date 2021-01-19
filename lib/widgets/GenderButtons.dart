import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ReusableCard.dart';

class _Button extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;
  final Color backgroundColor;

  _Button(
      {@required this.icon,
      @required this.label,
      this.onTap,
      this.backgroundColor}) {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: ReusableCard(
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                label,
                style: kCardTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GenderButtons extends StatelessWidget {
  final Function genderHandler;
  final Gender active;
  final male = Gender.male;
  final female = Gender.female;
  GenderButtons({this.genderHandler, this.active}) {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          _Button(
            label: 'MALE',
            icon: FontAwesomeIcons.mars,
            backgroundColor:
                active == male ? kSecondaryColor : kInactiveCardColor,
            onTap: () {
              genderHandler(male);
            },
          ),
          _Button(
            label: 'FEMALE',
            icon: FontAwesomeIcons.venus,
            backgroundColor:
                active == female ? kSecondaryColor : kInactiveCardColor,
            onTap: () {
              genderHandler(female);
            },
          ),
        ],
      ),
    );
  }
}
