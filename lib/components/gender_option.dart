import 'package:flutter/material.dart';
import '../constants/values_constants.dart';
import '../constants/color_constants.dart';

class GenderOption extends StatelessWidget {
  const GenderOption(
      {required this.fontAwesomeIcon, required this.label, Key? key})
      : super(key: key);

  final String label;
  final IconData fontAwesomeIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          fontAwesomeIcon,
          color: kIconInactiveColor,
          size: 50.0,
        ),
        // const SizedBox(
        //   height: 10.0,
        // ),
        Text(label, style: kTextLabel),
      ],
    );
  }
}
