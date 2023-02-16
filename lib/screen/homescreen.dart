import 'package:bmi_simple/constants/color_constants.dart';
import 'package:flutter/material.dart';
import '../constants/values_constants.dart';
import '../components/reusable_card.dart';
import '../components/screen_action_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/gender_option.dart';
import '../components/height_input.dart';
import '../components/weight_input.dart';
import '../components/age_input.dart';
import '../brain/bmi_brain.dart';
import '../result_screen_arguments.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text(kAppTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: const GenderOption(
                    label: 'MALE',
                    fontAwesomeIcon: FontAwesomeIcons.mars,
                  ),
                ),
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: const GenderOption(
                    label: 'FEMALE',
                    fontAwesomeIcon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            child: HeightInput(
              height: height,
              onChange: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  child: WeightInput(
                      weight: weight,
                      onDecrease: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onIncrease: () {
                        setState(() {
                          weight++;
                        });
                      }),
                ),
                ReusableCard(
                  child: AgeInput(
                      age: age,
                      onDecrease: () {
                        setState(() {
                          age--;
                        });
                      },
                      onIncrease: () {
                        setState(() {
                          age++;
                        });
                      }),
                ),
              ],
            ),
          ),
          ScreenActionButton(
            label: 'Calculate your BMI',
            onPress: () {
              BmiBrain calculateBMI = BmiBrain(height: height, weight: weight);
              Navigator.pushNamed(
                context,
                '/result',
                arguments: ResultScreenArguments(
                  bmi: calculateBMI.calculateBMI(),
                  result: calculateBMI.getResult(),
                  description: calculateBMI.getInterpretation(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
