import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {this.child, this.onPress, this.color = kActiveCardColor, Key? key})
      : super(key: key);
  final Color color;
  final Function()? onPress;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: const EdgeInsets.all(15.0),
          child: child,
        ),
      ),
    );
  }
}
