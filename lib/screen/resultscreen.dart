import 'package:bmi_simple/constants/color_constants.dart';
import 'package:bmi_simple/constants/values_constants.dart';
import 'package:flutter/material.dart';
import '../result_screen_arguments.dart';
import '../components/reusable_card.dart';
import '../components/screen_action_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ResultScreenArguments;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text(kAppTitle),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: const Center(
              child: Text(
                'Your Result:',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ReusableCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  args.result.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: kResultColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  args.bmi,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 100.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  args.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24.0),
                )
              ],
            ),
          ),
          ScreenActionButton(
              label: 'Re- Calculate',
              onPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
