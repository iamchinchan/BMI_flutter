import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../constants/values_constants.dart';

class HeightInput extends StatelessWidget {
  const HeightInput({required this.height, required this.onChange, Key? key})
      : super(key: key);
  final Function(double newValue) onChange;
  final int height;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Height',
          style: kTextLabel,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              height.toString(),
              style: kTextNumber,
            ),
            const Text(
              'cm',
              style: kTextLabel,
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
            sliderTheme: SliderTheme.of(context).copyWith(
                activeTrackColor: kActiveSliderColor,
                inactiveTrackColor: kInactiveSliderColor,
                thumbColor: kSliderColor,
                overlayColor: kSliderOverlayColor,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 15.0,
                ),
                overlayShape:
                    const RoundSliderOverlayShape(overlayRadius: 25.0)),
          ),
          child: Slider(
            min: 120.0,
            max: 220.0,
            value: height.toDouble(),
            onChanged: onChange,
          ),
        )
      ],
    );
  }
}
