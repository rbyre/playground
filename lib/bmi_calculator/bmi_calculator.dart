import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playground/bmi_calculator/icon_content.dart';
import 'package:playground/bmi_calculator/reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
// const bottomContainerColor = Color(0XFFF2E9CD);
const darkBackgroundColor = Color(0XFF0A0D22);

enum Gender { female, male }

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardcolor = inactiveCardColor;

  void updateColor(Gender selectedGender) {
    selectedGender == Gender.male
        ? maleCardColor = activeCardColor
        : maleCardColor = inactiveCardColor;

    selectedGender == Gender.female
        ? femaleCardcolor = activeCardColor
        : femaleCardcolor = inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      appBar: AppBar(
        backgroundColor: darkBackgroundColor,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      cardColor: maleCardColor,
                      cardChild: IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      cardColor: femaleCardcolor,
                      cardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text(
                    'Tilbake',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
