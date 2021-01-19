import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

import 'ReusableCard.dart';

final double minHeight = 75.0;
final double maxHeight = 250.0;

class HeightSlider extends StatefulWidget {
  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  int height = ((minHeight + maxHeight) / 2).round();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ReusableCard(
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: kCardTextStyle,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toString(),
                style: kValuesTextStyle,
              ),
              Text(
                'cm',
                style: kCardTextStyle,
              )
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: minHeight,
            max: maxHeight,
            activeColor: kButtonsColor,
            onChanged: (double newValue) {
              setState(() {
                height = newValue.round();
              });
            },
          )
        ],
      ),
    ));
  }
}
