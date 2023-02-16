import 'package:flutter/material.dart';
import 'constants/color_constants.dart';
import 'screen/homescreen.dart';
import 'screen/resultscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/result': (context) => const ResultScreen(),
      },
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
          secondary: Colors.pink,
        ),
        scaffoldBackgroundColor: kScaffoldBgColor,
        // primaryColor: primaryColor,
      ),
    );
  }
}
