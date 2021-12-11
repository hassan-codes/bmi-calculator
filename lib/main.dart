import 'package:flutter/material.dart';
import 'package:bmi_calculator/results_page.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        '/results_page': (context) => const ResultsPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0D22),
        accentColor: Color(0XFFEB1555),
        scaffoldBackgroundColor: Color(0XFF0A0D22),
      ),
    );
  }
}
