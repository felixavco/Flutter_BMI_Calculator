import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/utils/enums.dart';
import 'package:bmi_calculator/widgets/GenderButtons.dart';
import 'package:bmi_calculator/widgets/HeightSlider.dart';
import 'package:bmi_calculator/widgets/ReusableCard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender;

  void _genderHandler(Gender gender) {
    setState(() {
      activeGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GenderButtons(
              genderHandler: _genderHandler,
              active: activeGender,
            ),
            HeightSlider(),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: kSecondaryColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: kSecondaryColor,
                )),
              ],
            )),
            Container(
              color: kButtonsColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
