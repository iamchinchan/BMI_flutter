import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../constants/values_constants.dart';

class ScreenActionButton extends StatelessWidget {
  const ScreenActionButton(
      {required this.label, required this.onPress, Key? key})
      : super(key: key);
  final String label;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: kScreenChangeButton,
          borderRadius: BorderRadius.circular(6.0),
        ),
        margin: const EdgeInsets.only(
          top: 10.0,
          left: 15.0,
          right: 10.0,
        ),
        height: 80.0,
        child: Center(
          child: Text(
            label,
            style: kTextScreenActionButton,
          ),
        ),
      ),
    );
  }
}
