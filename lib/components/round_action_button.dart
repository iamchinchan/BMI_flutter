import 'package:flutter/material.dart';
// import '../constants/values_constants.dart';
import '../constants/color_constants.dart';

class RoundActionButton extends StatelessWidget {
  const RoundActionButton({required this.onPress, required this.icon, Key? key})
      : super(key: key);
  final Function() onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 46.0,
        width: 46.0,
      ),
      fillColor: kRoundActionButtonColor,
      onPressed: onPress,
      child: Icon(
        icon,
      ),
    );
  }
}
