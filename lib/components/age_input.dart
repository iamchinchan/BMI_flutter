import 'package:flutter/material.dart';
import 'round_action_button.dart';
import '../constants/values_constants.dart';

class AgeInput extends StatelessWidget {
  const AgeInput(
      {required this.age,
      required this.onDecrease,
      required this.onIncrease,
      Key? key})
      : super(key: key);
  final int age;
  final Function() onDecrease;
  final Function() onIncrease;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'AGE',
          style: kTextLabel,
        ),
        Text(
          age.toString(),
          style: kTextNumber,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundActionButton(
              icon: Icons.remove,
              onPress: onDecrease,
            ),
            RoundActionButton(
              icon: Icons.add,
              onPress: onIncrease,
            ),
          ],
        ),
      ],
    );
  }
}
